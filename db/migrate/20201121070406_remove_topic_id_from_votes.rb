class RemoveTopicIdFromVotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :votes, :topic_id, :integer
  end
end
