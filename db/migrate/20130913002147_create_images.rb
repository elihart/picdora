class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :reddit_score
      t.string :subreddit
      t.boolean :reported, default: false
      t.boolean :nsfw
      t.boolean :gif
      t.integer :category_id
      t.integer :album_id


      t.timestamps
    end
  end
end
