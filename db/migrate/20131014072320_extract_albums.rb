class ExtractAlbums < ActiveRecord::Migration
  def change
    # Grab existing album links
    Image.where("url LIKE ?", "%/a/%").each do |image|
      Album.create(url: image.url, nsfw: image.nsfw, reddit_score: image.reddit_score, category_id: image.category_id)
      image.delete
    end

  end
end
