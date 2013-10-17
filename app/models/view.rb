class View < ActiveRecord::Base
  belongs_to :channel
  belongs_to :image

  scope :liked, -> { where(liked: true)}
  scope :disliked, -> { where(liked: false)}
  scope :unranked, -> { where(liked: nil)}
end
