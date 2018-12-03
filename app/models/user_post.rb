class UserPost < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :intention
end
