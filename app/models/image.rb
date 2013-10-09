class Image < ActiveRecord::Base
  belongs_to :category
  has_many :views
  has_many :users, through: :views

  validates :url, uniqueness: true

  def self.subreddits
    list = []
    Image.select(:subreddit).distinct.each do |sub|
      list.push(sub.subreddit)
    end
    list.sort_by!{|m| m.downcase }
  end
end
