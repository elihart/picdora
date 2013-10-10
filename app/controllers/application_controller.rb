class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def record_view
    user = User.find(params[:user_id])
    image = Image.find(params[:image_id])
    liked = params[:liked]

    view = View.where(user: user, image: image).first_or_create

    view.increment!(:count)

    puts liked
  end

  def image_request
    user = User.find(params[:user_id])
  end
end
