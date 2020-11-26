class AddBody2ToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :body2, :text
  end
end
