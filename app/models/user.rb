class User < ActiveRecord::Base
  has_many :channels
  has_many :views, through: :channels

  # Create a channel for a new user
  after_create :create_channel

  private
  def create_channel
    # Create a new porn channel and initialize the model
    channel = Channel.create(user: self, name: "Porn")
    channel.update_model
  end

end
