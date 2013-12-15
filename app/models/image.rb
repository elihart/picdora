class Image < ActiveRecord::Base
  belongs_to :category
  belongs_to :album
  has_many :views

  # Default to not getting reported images or images in an album
  default_scope { where("album_id IS NULL AND reported IS FALSE") }

end
