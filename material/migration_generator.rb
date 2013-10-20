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
      url = url_object["url"]
      score = url_object["score"]
      subreddit = url_object["subreddit"]
      nsfw = url_object["nsfw"]
      gif = url_object["gif"]

      # Add line to migration
      if url.match("/a/") || url.match("/gallery/")
        migration.puts <<-MIGRATE_CODE
          Album.create(url: '#{url}', reddit_score: #{score}, nsfw: #{nsfw}, category_id: Category.where(name: '#{subreddit}').first.id)
        MIGRATE_CODE
      else
        migration.puts <<-MIGRATE_CODE
          Image.create(url: '#{url}', reddit_score: #{score}, subreddit: '#{subreddit}', nsfw: #{nsfw}, gif: #{gif})
        MIGRATE_CODE
      end
    end
  end

  # Add end tags
  migration.puts <<-END_CODE
    Category.all.each do |cat|
      Image.where(category_id: nil, subreddit: cat.name).update_all(category_id: cat.id)
    end
    end
    end
  END_CODE
end
