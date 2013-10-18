class Channel < ActiveRecord::Base
  belongs_to :user
  has_many :views

  LIKE_WEIGHTING = 1
  NEUTRAL_WEIGHTING = -0.1
  DISLIKE_WEIGHTING = -1

  # logic for recommending an image
  def next_image(count)
    result = []

    update_model if !self.model

    # Get list of already seen images once, then add the selected images later
    seen = View.where(channel: self).pluck(:image_id)

    # Randomly pick a category using weightings
    model = JSON.parse(self.model)
    sum = model["total"]
    weightings = model["weightings"]

    count.times do
      # Find a match using binary search
      iMin = 0
      iMax = weightings.size
      target = rand(sum)
      while iMin <= iMax
        iMid = iMin + (iMax - iMin)/2
        entry = weightings[iMid]
        cat_id = entry.keys[0]

        low = entry[cat_id]["low"]
        high = entry[cat_id]["high"]

        if target < low
          iMax = iMid - 1
        elsif target >= high
          iMin = iMid + 1
        else
          break
        end
      end

      # TODO: Error when a user has seen all the images in the selected category and the channel model
      # hasn't been updated to reflect that. Need to change image selection to use already seen images
      # when necessary, and sometimes when not necessary

      image = Image.where(category_id: cat_id).where.not(id: seen).order("reddit_score DESC").first

      # Create a view to indicate that this image has been seen
      # TODO: Not a perfect system since the image goes into the queue and isn't guaranteed to be seen if the
      # user quits before this image reaches the front of the queue. Need to prevent possibility of duplicates
      # while still accurately tracking seen images
      view = View.where(channel: self, image: image).first_or_create
      view.increment!(:count)

      # Add selected image to seen to prevent duplicate on the next iteration. This prevents
      # another db query
      seen.push(image.id)

      result.push(image)
      end

    return result
  end

  def update_model
    # Get all the categories to include in the model, than calculate weightings for them

    # non porn nsfw categories to exclude
    exclude = %w[morbidreality fiftyfifty imgoingtohellforthis]

    # porn categories
    categories = Category.nsfw.where.not(name: exclude)

    # Calculate weightings
    weightings = []
    sum = 0
    categories.each do |category|
      views = category.views

      # preference ranking based on how many images in this category have been liked/disliked
      if (views.count == 0)
        weight = 1
      else
        weight = (views.liked.count * LIKE_WEIGHTING + views.disliked.count * DISLIKE_WEIGHTING + views.unranked.count * NEUTRAL_WEIGHTING) / views.count
      end

      # Make weighting positive and normalize it
      weight = (weight + 1.1)**2

      # How many new images are left in this category?
      percent_fresh = ((category.images.count - views.count) * 100.0) / category.images.count

      score = weight * percent_fresh

      low = sum
      sum += score.ceil
      weightings.push({category.id => {low: low, high: sum}})
    end

    result = {total: sum, weightings: weightings}

    # Store as json
    self.update(model: JSON.generate(result))

  end
end
