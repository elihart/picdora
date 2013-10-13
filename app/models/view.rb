class View < ActiveRecord::Base
  belongs_to :channel
  belongs_to :image
end
