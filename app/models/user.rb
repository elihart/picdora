class User < ActiveRecord::Base
  has_many :channels
  has_many :views, through: :channels

end
