class User < ApplicationRecord
  has_many :intentions
  has_many :owned_posts, foreign_key: "owner_id", class_name: "Post"
  has_many :user_posts
  has_many :posts, through: :user_posts

  def post_count_by_intention(intention)
    self.user_posts.select {|post| post.intention = intention}.count
  end

end
