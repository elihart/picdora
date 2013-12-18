require 'json'

fileName = ARGV[0]

# Create migration file
File.open("../db/migrate/#{Time.now.utc.to_s.chomp("UTC").gsub(/[-: ]/, '') }_add_images#{Time.now.to_i}.rb", 'w') do |migration|
  # Add migration info to top of file
  migration.puts <<-START_CODE
    class AddImages#{Time.now.to_i} < ActiveRecord::Migration
      def change
  START_CODE


  # Parse each file name and add it to the migration
  File.open(fileName, 'r') do |file|
    while (line = file.gets)
      url_object = JSON.parse(line)
      imgurId = url_object["imgurId"]
      score = url_object["score"]
      subreddit = url_object["subreddit"]
      nsfw = url_object["nsfw"]
      gif = url_object["gif"]
      isAlbum = url_object["isAlbum"]

      # Add line to migration
      if isAlbum
        migration.puts <<-MIGRATE_CODE
          Album.new(imgurId: '#{imgurId}', reddit_score: #{score}, nsfw: #{nsfw}, category_id: Category.where(name: '#{subreddit}').first.id).save(validate: false)
        MIGRATE_CODE
      else
        migration.puts <<-MIGRATE_CODE
          Image.new(imgurId: '#{imgurId}', reddit_score: #{score}, category_id: Category.where(name: '#{subreddit}').first.id, nsfw: #{nsfw}, gif: #{gif}).save(validate: false)
        MIGRATE_CODE
      end
    end
  end

  # Add end tags
  migration.puts <<-END_CODE
    end
    end
  END_CODE
end
