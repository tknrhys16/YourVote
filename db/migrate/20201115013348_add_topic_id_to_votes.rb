class AddTopicIdToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :topic_id, :integer
  end
end
