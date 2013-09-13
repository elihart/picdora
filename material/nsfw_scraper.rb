require 'open-uri'
require 'cgi'
require 'json'

MIN_SCORE_REQUIRED = 100
# Top posts of all time in r/nsfw, in in batches of 100
URL = 'http://www.reddit.com/r/nsfw/top.json?sort=top&limit=100&t=all'

def GetTopNSFW
  File.open('top_nsfw_imgur_links', 'w') do |f|
    counter = 1
    non_imgur = 0;
    url = URL
    after = ''
    begin
      # Get the first batch of links
      result = GetRedditLinks(url)
      links = result[:links]
      after = result[:after]

      # Process links
      links.each do |link|
        # If the score is too low we're done
        if link[:score] < MIN_SCORE_REQUIRED
          return
        end

        # Write the link to file only if it is an imgur link
        if (link[:url].match("imgur.com"))
          f.puts(JSON.generate({:url => link[:url], :score => link[:score]}))
          counter += 1
        else
          non_imgur += 1;
        end

      end

      # Update the url to include the new 'after'
      url = URL + "&after=#{after}"

      # Must wait 2 seconds between each query
      sleep 2

    end while (after && !after.empty?)

    puts "Recorded #{counter} imgur links out of #{counter + non_imgur} total links"
  end
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
  return_value = {links: links, after: results["data"]["after"]}
  return_value
end


# Run program
GetTopNSFW()
