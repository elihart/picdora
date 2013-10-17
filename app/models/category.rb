class Category < ActiveRecord::Base
  has_many :images
  has_many :views, through: :images
  has_many :albums

  scope :nsfw, -> { where(nsfw: true)}
end
