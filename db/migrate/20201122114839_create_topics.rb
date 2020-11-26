class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :vote_id
      t.integer :post_id
      t.text :body

      t.timestamps
    end
  end
end
