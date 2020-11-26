class AddBody4ToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :body4, :text
  end
end
