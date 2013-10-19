class UsersController < ApplicationController
  def index
    if session[:user_id]
      redirect_to "/channel/index" and return
    end
  end

  def login
    username = params[:username]

    if username.blank?
      flash[:error] = "Please enter a username"
      render :index
    else
      user = User.where(name: username).first_or_create

      session[:user_id] = user.id
      flash[:login] = true

      redirect_to "/channel/index" and return
    end
  end
end
