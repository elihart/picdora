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


def GetImagesFromSubreddits(subs)
  counter = 0
  start = Time.now
  File.open(Time.now.strftime("%Y-%m-%d"), 'w') do |f|
    # Go through each subreddit
    subs.each do |subreddit|
      # Go through each time option
      image_ids = []
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

            # Get all imgur id's from this link
            getImgurIdsFromUrl(link[:url]).each do |id|
              # Don't add duplicate images
              unless image_ids.include?(id)
                f.puts(JSON.generate({imgurId: id[:value], score: link[:score], subreddit: subreddit, nsfw: link[:nsfw], gif: link[:gif], isAlbum: id[:isAlbum]}))
                counter += 1
                subCounter += 1
                image_ids.push(id)
              end
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

# Given a url, get all imgur id's, either image ids or an album id.
# Returns a array of ids of the form [{value: ad8Sdk2, isAlbum: true}]
def getImgurIdsFromUrl(url)
  result = []

  # Make sure this is an imgur url. If not there are no matching ids
  if !url.match("imgur.com")
    return result
  end

  # Check for an album. As far as I know if it's an album there can only be one id
  # The album id should come after /a/
  if url.match("imgur.com/a/")
    partition = url.partition("imgur.com/a/")
    tail = partition[2]
    if tail.empty?
      puts "album imgurId error - url : #{url}"
    else
      match = tail.match(/\w{4,}/)
      if match
        id = match[0]
        result.push({value: id, isAlbum: true})
      else
        puts "album imgurId error - url : #{url}"
      end
    end

    return result
  end

  # Otherwise it shouldn't be an album, and all ids should be image ids. Most urls will only have one id, put it is possible
  # to have comma separated ids, or even comma separated imgur links

  # Check for commas, if there are some there should be more than one id
  if url.match(",")
    url.split(",").each do |piece|
      # It could be a full imgur link, if so we can use recursion
      if piece.match("imgur.com")
        result + getImgurIdsFromUrl(piece)
      else
        id = piece.match(/\w{4,}/)
        if id.nil?
          puts "Error getting id from #{piece}"
        else
          result.push({value: id, isAlbum: false})
        end
      end
    end

    # The most common case is just a single url
  else
    # Look for a string of at least 4 "word" characters ([a-zA-Z0-9_]) at the end of the url. That should be the id.
    # The id should come after the last slash
    pieces = url.partition("imgur.com")[2].chomp("/new").chomp("/all").gsub(/\.jpg.*/, "").gsub(/\.gif.*/, "").gsub(/\.png.*/, "").split("/")
    if pieces.empty?
      puts "error getting id from url - #{url}"
    else
      match = pieces.last.match(/\w{4,}/)
      if match
        id = match[0]
        result.push({value: id, isAlbum: false})
      else
        puts "error getting id from url - #{url}"
      end
    end

  end

    return result
end

# Run program
GetImagesFromSubreddits(subreddits)



