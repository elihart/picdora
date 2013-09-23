class Image < ActiveRecord::Base
  validates :url, uniqueness: true

  def self.subreddits
    list = []
    Image.select(:subreddit).distinct.each do |sub|
      list.push(sub.subreddit)
    end
    list.sort_by!{|m| m.downcase }
  end
end
