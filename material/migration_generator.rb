require 'json'

# Create migration file
File.open('image_migration.rb', 'w') do |migration|
  # Add migration info to top of file
  migration.puts <<-START_CODE
    class AddSongs < ActiveRecord::Migration
      def change
        counter = 0
        dup_counter = 0
  START_CODE

  
  # Parse each file name and add it to the migration
  File.open('top_nsfw_imgur_links', 'r') do |file|
    while (line = file.gets)
        url_object = JSON.parse(line)
	url = url_object["url"]
	score = url_object["score"]
        subreddit = url_object["subreddit"]
        # Add line to migration
    	migration.puts <<-MIGRATE_CODE
        begin
          Image.create!(url: '#{url}', reddit_score: #{score}, subreddit: '#{subreddit}')
          counter += 1
        rescue
          dup_counter += 1
        end
      MIGRATE_CODE
    end    
  end

  # Add end tags
  migration.puts <<-END_CODE
    puts "Links added: \#{counter}  Duplicate links: \#{dup_counter}"
    end
    end
  END_CODE
end
