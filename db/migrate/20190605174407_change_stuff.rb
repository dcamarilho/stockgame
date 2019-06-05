class ChangeStuff < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :credits, :float
    change_column :stocks, :price, :float
    change_column :price_histories, :price, :float
    change_column :orders, :amount, :float
    change_column :orders, :price, :float
  end
end
