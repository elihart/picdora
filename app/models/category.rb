class Category < ActiveRecord::Base
  has_many :images

  scope :nsfw, -> { where(nsfw: true)}
end
