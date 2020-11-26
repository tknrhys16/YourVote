class RemoveBodyFromTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :body, :text
  end
end
