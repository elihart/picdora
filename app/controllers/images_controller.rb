class ImagesController < ApplicationController
  def index

    @sfw_subreddits = Category.where(nsfw: false).pluck(:name)
    @nsfw_subreddits = Category.where(nsfw: true).pluck(:name)
  end

  def subreddits
    subs = params[:subs]
    gifs = params[:gifs]
    puts gifs
    images = []
    cats = Category.where(name: subs).pluck(:id)

    Image.where(category_id: cats, gif: gifs).each do |image|
      image.url.chomp!(".jpg")
      if (!image.url.match("/a/") && !image.url.match("/gallery/"))
        images.push(image.url + ".jpg")
      end
    end
    render json: images
  end
end
