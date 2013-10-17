class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.boolean :nsfw
      t.integer :reddit_score
      t.integer :category_id
      t.string :url
      t.timestamps
    end
  end
end
