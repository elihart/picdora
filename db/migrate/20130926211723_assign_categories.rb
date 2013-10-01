class AssignCategories < ActiveRecord::Migration
  def change
    # Create categories from image subreddits
    Image.select(:subreddit).distinct.each do |sub|
      categoryName = sub.subreddit

      # Figure out if it's nsfw or not
      sampleSize = 100
      nsfwCount = 0
      Image.limit(sampleSize).where(subreddit: categoryName).each do |image|
        if(image.nsfw)
          nsfwCount += 1
        end
      end
      isNFSW = nsfwCount > (sampleSize / 5) ? true : false
      puts "#{categoryName} nsfw? - #{isNFSW}"

      # Create the category and update images with that category
      category = Category.create(name: categoryName, nsfw: isNFSW)
      Image.where(subreddit: categoryName).update_all(category_id: category.id)
    end

    puts "Created #{Category.all.size} categories with #{Image.all.size} images"

  end
end
