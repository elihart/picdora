require 'json'

# Create migration file
File.open('add_images.rb', 'w') do |migration|
  # Add migration info to top of file
  migration.puts <<-START_CODE
    class AddImages < ActiveRecord::Migration
      def change
  START_CODE


  # Parse each file name and add it to the migration
  File.open('top_earth', 'r') do |file|
    while (line = file.gets)
      url_object = JSON.parse(line)
      url = url_object["url"]
      score = url_object["score"]
      subreddit = url_object["subreddit"]
      nsfw = url_object["nsfw"]
      gif = url_object["gif"]

      # Add line to migration
      migration.puts <<-MIGRATE_CODE
          Image.create(url: '#{url}', reddit_score: #{score}, subreddit: '#{subreddit}', nsfw: #{nsfw}, gif: #{gif})
      MIGRATE_CODE
    end
  end

  # Add end tags
  migration.puts <<-END_CODE
    end
    end
  END_CODE
end
