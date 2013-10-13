class Channel < ActiveRecord::Base
  belongs_to :user
  has_many :views

  def next_image
    # non porn nsfw categories to exclude
    exclude = %w[morbidreality fiftyfifty imgoingtohellforthis]

    # porn categories
    categories = Category.nsfw.where.not(name: exclude).order("name").ids

    seen = View.where(channel: self).pluck(:image_id)

    image = Image.where(category_id: categories).where.not(id: seen).order("reddit_score DESC").first

    return image
  end
end
