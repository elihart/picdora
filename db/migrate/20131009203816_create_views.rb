class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.integer :channel_id
      t.integer :image_id
      t.boolean :liked, default: nil
      t.integer :count, default: 0

      t.timestamps
    end
  end
end
