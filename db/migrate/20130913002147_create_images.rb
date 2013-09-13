class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :reddit_score
      t.integer :likes
      t.integer :dislikes
      t.boolean :reported

      t.timestamps
    end
  end
end
