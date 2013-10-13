class Image < ActiveRecord::Base
  belongs_to :category
  belongs_to :album
  has_many :views

  default_scope { where("album_id IS NULL") }

  validates :url, uniqueness: true
end
