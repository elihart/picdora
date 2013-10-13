class ChannelController < ApplicationController


  def image_request
    channel = Channel.find(params[:channel_id])

    image = channel.next_image

    view = View.where(channel: channel, image: image).first_or_create

    view.increment!(:count)

    render json: image
  end

  def record_like
    channel = User.find(params[:channel_id])
    image = Image.find(params[:image_id])
    liked = params[:liked]

    view = View.where(channel: channel, image: image).first

    view.update(liked: liked)

    render :nothing => true
  end
end
