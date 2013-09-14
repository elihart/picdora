class ImagesController < ApplicationController
  def index
    all_images = Image.where(subreddit: :earthporn)
    @images = []
    all_images.each do |image|
      image.url.chomp!(".jpg")
      if !image.url.match("/a/")
        @images.push(image.url + ".jpg")
      end
    end
  end
end
