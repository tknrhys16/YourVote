class RenameUserIdColumnToPolls < ActiveRecord::Migration[5.2]
  def change
    rename_column :polls, :vote_id, :topic_id
  end
end
