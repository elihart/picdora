class ChannelController < ApplicationController
  def record_view
    channel = User.find(params[:channel_id])
    image = Image.find(params[:image_id])
    liked = params[:liked]

    view = View.where(channel: channel, image: image).first_or_create

    view.increment!(:count)

    puts liked
  end

  def image_request
    channel = Channel.find(params[:channel_id])

    image = channel.next_image

    render json: image
  end
end
