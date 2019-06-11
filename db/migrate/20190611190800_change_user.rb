class ChangeUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :credits, :float, default: 1000.0
  end
end
