class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :favorite_id
      t.string :title
      t.text :body
      t.string :image_id
      t.boolean :status

      t.timestamps
    end
  end
end
