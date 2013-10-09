class User < ActiveRecord::Base
  has_many :views
  has_many :images, through: :views


  def record_view(image, liked)

  end
end
