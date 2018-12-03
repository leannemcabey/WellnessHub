class AddStatusFieldToUserIntentions < ActiveRecord::Migration[5.2]
  def change
    add_column :user_intentions, :complete, :boolean
  end
end
