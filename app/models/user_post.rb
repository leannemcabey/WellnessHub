class UserPost < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :intention

  def intention_name
    intention.name if intention
  end

  def intention_name=(name)
    intention_id= Intention.find_by(name: name)
  end

end
