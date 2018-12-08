class UserPost < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :intention



  def intention_name
    intention.name if intention
  end

  def user_intentions
    user.intentions
  end

  def intention_name=(name)

    found_intention = Intention.find_or_create_by(name: name)
    self.intention = found_intention
    found_intention.complete=false;
   self.user.intentions << found_intention
   self.save
  end




end
