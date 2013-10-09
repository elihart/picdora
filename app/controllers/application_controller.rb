class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def recordViewing
    user = User.find(params[:user_id])
    image = Image.find(params[:image_id])
    liked = params[:liked]

    user.record_view(image, liked)
  end
end
