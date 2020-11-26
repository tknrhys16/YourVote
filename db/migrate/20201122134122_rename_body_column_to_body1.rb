class RenameBodyColumnToBody1 < ActiveRecord::Migration[5.2]
  def change
    rename_column :topics, :body, :body1
  end
end
