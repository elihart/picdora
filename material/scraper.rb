require 'open-uri'
require 'cgi'
require 'json'

MIN_SCORE_REQUIRED = 10

#SUBREDDITS = %w[]
TIME = %w[week]

# Get list of subreddits to use
subreddits = []
File.open('subreddit_list', 'r') do |f|
  while (line = f.gets)
    # Strip any whitespace, downcase, and add to list if not already present
    sub = line.strip.downcase
    if !subreddits.include?(sub)
      subreddits.push(sub)
    else
      puts "#{sub} has a duplicate"
    end
  end
end


def GetTopNSFW(subs)  counter = 0
  start = Time.now
  File.open(Time.now.strftime("%Y-%m-%d"), 'w') do |f|
    # Go through each subreddit
    subs.each do |subreddit|
      # Go through each time option
      all_links = []
      subCounter = 0
      TIME.each do |time|
        after = ''

        begin
          # Get the first batch of links
          result = GetRedditLinks(buildUrl(subreddit, time, after))
          links = result[:links]
          after = result[:after]

          # Process links
          links.each do |link|
            # If the score is too low we're done
            if (link[:score] < MIN_SCORE_REQUIRED)
              break
            end

            # Write the link to file only if it is an imgur link and we haven't seen it yet
            if (link[:url].match("imgur.com") && !all_links.index(link[:url]))
              f.puts(JSON.generate({url: link[:url], score: link[:score], subreddit: subreddit, nsfw: link[:nsfw], gif: link[:gif]}))
              counter += 1
              subCounter += 1
              all_links.push(link[:url])
            end

          end

          # Must wait 2 seconds between each query
          sleep 2

        end while (after && !after.empty?)
      end
      puts "#{subCounter} images added to #{subreddit}"
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
    nsfw = result["data"]["over_18"]
    gif = !!url.index(".gif")

    # Add to links array
    links.push({url: url, score: score, nsfw: nsfw, gif: gif})
  end

  # Add 'After' attribute to return
  {links: links, after: results["data"]["after"]}
end

def buildUrl(subreddit, time, after)
  "http://www.reddit.com/r/#{subreddit}/top.json?sort=top&limit=100&t=#{time}&after=#{after}"
end

# Run program
GetTopNSFW(subreddits)



