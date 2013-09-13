require 'json'

# Create migration file
File.open('image_migration.rb', 'w') do |migration|
  # Add migration info to top of file
  migration.puts("class AddSongs < ActiveRecord::Migration")
  migration.puts("def change")

  
  # Parse each file name and add it to the migration
  File.open('top_nsfw_imgur_links', 'r') do |file|
    while (line = file.gets)
        url_object = JSON.parse(line)
	url = url_object["url"]
	score = url_object["score"]
        subreddit = url_object["subreddit"]
        # Add line to migration
    	migration.puts("Image.create(url: '#{url}', reddit_score: #{score}, subreddit: #{subreddit})")
    end    
  end

  # Add end tags
  migration.puts("end")
  migration.puts("end")
end
