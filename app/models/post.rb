class Post < ApplicationRecord
  has_many :post_categories
  has_many :categories, through: :post_categories
  belongs_to :owner
  has_many :user_posts
  has_many :posts, through: :user_posts
end
