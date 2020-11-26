class RenamePostIdColumnToTopics < ActiveRecord::Migration[5.2]
  def change
    rename_column :topics, :post_id, :poll_id
  end
end
