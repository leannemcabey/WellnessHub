class CreateIntentions < ActiveRecord::Migration[5.2]
  def change
    create_table :intentions do |t|
      t.integer :user_id
      t.string :name
      t.boolean :complete

      t.timestamps
    end
  end
end
