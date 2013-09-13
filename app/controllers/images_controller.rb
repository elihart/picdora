class ImagesController < ApplicationController
  def index
    all_images = Image.all
    @images = []
    all_images.each do |image|
      image.url.chomp!(".jpg")
      if !image.url.match("/a/")
        @images.push(image.url + ".jpg")
      end
    end
  end
end
