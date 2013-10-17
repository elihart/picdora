class Album < ActiveRecord::Base
  has_many :images
  belongs_to :category

  scope :nsfw, -> { where(nsfw: true) }
end
