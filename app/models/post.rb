class Post < ApplicationRecord
  has_many :post_categories
  has_many :categories, through: :post_categories
  belongs_to :owner, class_name: 'User'
  has_many :user_posts
  has_many :posts, through: :user_posts

  def category_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find(category_attribute)
      self.categories << category
    end
  end

end
