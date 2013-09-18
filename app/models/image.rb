class Image < ActiveRecord::Base
  validates :url, uniqueness: true

  def self.subreddits
    list = []
    Image.select(:subreddit).distinct.each do |song|
      list.push(song.subreddit)
    end
    list.sort_by!{|m| m.downcase }
  end
end
