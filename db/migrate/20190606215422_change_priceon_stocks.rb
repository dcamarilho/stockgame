class ChangePriceonStocks < ActiveRecord::Migration[5.2]
  def change
    change_column :stocks, :price, :float, precision: 7, scale: 2
  end
end
