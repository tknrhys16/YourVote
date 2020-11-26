class RenameBody1ColumnToTopics < ActiveRecord::Migration[5.2]
  def change
    rename_column :topics, :body1, :body
  end
end
