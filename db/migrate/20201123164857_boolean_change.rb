class BooleanChange < ActiveRecord::Migration[5.2]
  def up
    change_column :votes, :status, :boolean, default: true
  end

  def down
    change_column :profiles, :status, :boolean, default: nil
  end
end
