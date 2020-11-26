class AddBody3ToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :body3, :text
  end
end
