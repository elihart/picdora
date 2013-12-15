class ExtractImgurIds < ActiveRecord::Migration
  def change
    # Extract albums that weren't caught before
    Image.all.each do |image|
      if image.url.match("/a/")
        Album.create(url: image.url, nsfw: image.nsfw, reddit_score: image.reddit_score, category_id: image.category_id)
        image.delete
      end
    end

    # Update albums
    Album.all.each do |album|
      # Fix "gallery" images that were mistakenly called albums
      if album.url.match("/gallery/")
        Image.create(url: album.url, reddit_score: album.reddit_score, category_id: album.category_id, nsfw: album.nsfw, gif: false)
        album.delete
        next
      end

      # Add imgurId
      # Look for a string of at least 4 "word" characters ([a-zA-Z0-9_]) at the end of the url. That should be the id
      partition = album.url.partition("imgur.com/a/")
      tail = partition[2]
      if tail.blank?
        puts "not an album - id : #{album.id} url : #{album.url}"
      else
        match = tail.match(/\w{4,}/)
        if match
          id = match[0]
          album.update(imgurId: id)
        else
          puts "album imgurId error - id : #{album.id} url : #{album.url}"
        end
      end
    end


    # Update images
    Image.all.each do |image|
      # Add imgurId
      # Look for a string of at least 4 "word" characters ([a-zA-Z0-9_]) at the end of the url. That should be the id
      # The id is usually after the last slash, but sometimes the url ends with new or all
      pieces = image.url.chomp("/new").chomp("/all").gsub(/\.jpg.*/, "").gsub(/\.gif.*/, "").gsub(/\.png.*/, "").split("/")
      if pieces.empty?
        puts "unable to split - image id : #{image.id}  url : #{image.url}"
      else
        match = pieces.last.match(/\w{4,}/)
        if match
          id = match[0]
          image.update(imgurId: id)
        else
          puts "error getting id from url - image id : #{image.id}  url : #{image.url}"
        end
      end

    end
  end
end
