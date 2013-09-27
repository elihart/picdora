class ImagesController < ApplicationController
  def index

    @sfw_subreddits = Category.where(nsfw: false).pluck(:name)
    @nsfw_subreddits = Category.where(nsfw: true).pluck(:name)
  end

  def subreddits
    subs = params[:subs]
    images = []
    Image.where(subreddit: subs).each do |image|
      image.url.chomp!(".jpg")
      if !image.url.match("/a/")
        images.push(image.url + ".jpg")
      end
    end
    render json: images
  end
end
