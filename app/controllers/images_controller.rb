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

  def random
    image = Image.offset(rand(Image.count)).first
    render json: image
  end

  def data
    images = Image.where.not(imgurId: nil)
    render json: images.as_json(only: [:imgurId, :reddit_score, :nsfw, :gif], include: {category: {only: :name}})
  end

  def album_data
    albums = Album.where.not(imgurId: nil)
    render json: albums.as_json(only: [:imgurId, :reddit_score, :nsfw], include: {category: {only: :name}})
  end
end
