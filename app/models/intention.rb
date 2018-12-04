class Intention < ApplicationRecord
  belongs_to :user
  has_many :user_posts
  has_many :posts, through: :user_posts
  validates :name, uniqueness: { scope: :user_id, message: 'You already set this intention!'}

  def posts_count
    posts.count
  end
end
