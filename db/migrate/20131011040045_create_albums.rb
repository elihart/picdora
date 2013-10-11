class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.boolean :nsfw
      t.string :url
      t.timestamps
    end

    # Grab existing album links
    count = 0
    Image.where("url LIKE ? OR url LIKE ?", "%/a/%", "%/gallery/%").each do |image|
      Album.create(url: image.url, nsfw: image.nsfw)
      image.delete
      count += 1
    end

    puts "#{count} albums created"

  end
end
