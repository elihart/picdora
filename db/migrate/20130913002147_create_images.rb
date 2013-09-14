class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :reddit_score
      t.string :subreddit
      t.integer :likes
      t.integer :dislikes
      t.boolean :reported
      t.boolean :nsfw

      t.timestamps
    end
  end
end
