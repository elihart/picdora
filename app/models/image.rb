class Image < ActiveRecord::Base
  belongs_to :category

  validates :url, uniqueness: true
end
