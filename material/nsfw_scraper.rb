require 'open-uri'
require 'cgi'
require 'json'

MIN_SCORE_REQUIRED = 100

#SUBREDDITS = %w[grool blowjobs dirtysmall nsfw nsfw_gifs realgirls boobies lipsthatgrip asiannsfw amateur ass legalteens cumsluts nsfwhardcore blowjobs gonewild]
SUBREDDITS = %w[earthporn]
TIME = %w[all]

def GetTopNSFW
  counter = 0;
  start = Time.now
  File.open('top_earth', 'w') do |f|
  # Go through each subreddit
  SUBREDDITS.each do |subreddit|
    # Go through each time option
    TIME.each do |time|
        after = ''
        begin
          # Get the first batch of links
          result = GetRedditLinks(buildUrl(subreddit, time, after) )
          links = result[:links]
          after = result[:after]

          # Process links
          links.each do |link|
            # If the score is too low we're done
            if link[:score] < MIN_SCORE_REQUIRED
              break
            end

            # Write the link to file only if it is an imgur link
            if (link[:url].match("imgur.com"))
              f.puts(JSON.generate({:url => link[:url], :score => link[:score], :subreddit => subreddit}))
              counter += 1
            end

          end

          # Must wait 2 seconds between each query
          sleep 2

        end while (after && !after.empty?)
      end
    end
  end
  puts "#{counter} images collected in #{Time.now - start} seconds"
end


# Takes a reddit query that returns json format
def GetRedditLinks(url)
  # Initialize array to store links to return
  links = []

  # Run reddit query and parse into json object
  while true
    begin
      results = JSON.parse(open(url).read)
      break
    rescue
      puts "Error reaching reddit. Trying again..."
      sleep 3
    end
  end

  # Record results
  results["data"]["children"].each do |result|
    # Get post data
    score = result["data"]["score"]
    url = result["data"]["url"]

    # Add to links array
    links.push({url: url, score: score})
  end

  # Add 'After' attribute to return
  {links: links, after: results["data"]["after"]}
end

def buildUrl(subreddit, time, after)
  "http://www.reddit.com/r/#{subreddit}/top.json?sort=top&limit=100&t=#{time}&after=#{after}"
end


# Run program
GetTopNSFW()
