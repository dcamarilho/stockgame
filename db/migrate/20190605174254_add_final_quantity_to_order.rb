class AddFinalQuantityToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :final_quantity, :integer
  end
end
