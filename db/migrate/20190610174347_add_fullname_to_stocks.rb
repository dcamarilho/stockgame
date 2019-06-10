class AddFullnameToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :fullname, :string
  end
end
