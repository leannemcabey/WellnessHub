class User < ApplicationRecord
  has_many :user_intentions
  has_many :owned_posts, foreign_key: "owner_id", class_name: "Post"
  has_many :user_posts
  has_many :posts, through: :user_posts
end
