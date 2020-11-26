class RemoveBody2FromTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :body2, :text
    remove_column :topics, :body3, :text
    remove_column :topics, :body4, :text
  end
end
