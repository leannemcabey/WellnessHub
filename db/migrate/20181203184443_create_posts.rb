class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :address
      t.string :comment
      t.string :url
      t.integer :owner_id

      t.timestamps
    end
  end
end
