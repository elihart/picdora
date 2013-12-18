namespace :backup do
  desc "Backup all images to json file"
  task images: :environment do
    File.open('images_backup.json', 'w') do |f|
      Image.where.not(imgurId: nil).each do |image|
        cat = image.subreddit ? image.subreddit : image.category.name

        json = Jbuilder.encode do |json|
          json.imgurId image.imgurId
          json.reddit_score image.reddit_score
          json.nsfw image.nsfw
          json.gif image.gif
          json.category cat
        end

        f.puts(json.to_s)
      end
    end
  end

  desc "Backup albums"
  task albums: :environment do
    File.open('albums_backup.json', 'w') do |f|
      Album.where.not(imgurId: nil).each do |album|
        json = Jbuilder.encode do |json|
          json.imgurId album.imgurId
          json.reddit_score album.reddit_score
          json.nsfw album.nsfw
          json.category album.category.name
        end

        f.puts(json.to_s)
      end
    end
  end

  desc "Backup categories"
  task categories: :environment do
    File.open('categories_backup.json', 'w') do |f|
      Category.all.each do |cat|
        json = Jbuilder.encode do |json|
          json.name cat.name
          json.nsfw cat.nsfw
          json.porn cat.porn
        end

        f.puts(json.to_s)
      end
    end
  end
end
