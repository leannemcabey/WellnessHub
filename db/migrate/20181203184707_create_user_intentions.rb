class CreateUserIntentions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_intentions do |t|
      t.integer :user_id
      t.string :intention_name

      t.timestamps
    end
  end
end
