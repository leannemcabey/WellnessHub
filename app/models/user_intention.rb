class UserIntention < ApplicationRecord
  belongs_to :user
  has_many :user_posts
  has_many :posts, through: :user_posts
end
