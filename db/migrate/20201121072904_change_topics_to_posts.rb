class ChangeTopicsToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_table :topics, :posts
  end
end
