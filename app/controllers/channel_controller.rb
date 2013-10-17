class ChannelController < ApplicationController


  def image_request
    channel = Channel.find(params[:channel_id])
    image = channel.next_image(params[:count].to_i)
    render json: image
  end

  def record_like
    channel = params[:channel_id]
    image = params[:image_id]
    liked = params[:liked]

    view = View.where(channel_id: channel, image_id: image)

    view.update(liked: liked)

    # TODO: don't have to update model on every like. Takes too much work
    # Temporary solution, randomly update model with chance on every like
    roll = rand(15)
    Channel.find(channel).update_model if roll == 0

    render :nothing => true
  end

  def save_image
    view = View.where(channel_id: params[:channel_id], image_id: params[:image_id])
    view.update(saved: params[:saved])
  end

  def report_image
    image = Image.find(params[:image_id])
    image.update(reported: true)
  end
end
