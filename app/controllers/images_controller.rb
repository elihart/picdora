class ImagesController < ApplicationController
  def index
    nsfw = !!params[:nsfw]
    gif = params[:gif]
    subreddit = params[:subreddit] || 'earthporn'

    all_images = Image.where(subreddit: subreddit)
    @images = []
    all_images.each do |image|
      image.url.chomp!(".jpg")
      if !image.url.match("/a/")
        @images.push(image.url + ".jpg")
      end
    end

    @subreddits = Image.subreddits
  end
end
