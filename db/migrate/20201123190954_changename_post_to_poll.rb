class ChangenamePostToPoll < ActiveRecord::Migration[5.2]
  def change
    rename_table :posts, :polls
  end
end
