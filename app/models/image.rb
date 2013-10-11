class Image < ActiveRecord::Base
  belongs_to :category
  belongs_to :album

  validates :url, uniqueness: true
end
