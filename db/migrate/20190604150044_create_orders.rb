class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :price
      t.integer :quantity
      t.integer :amount
      t.references :user, foreign_key: true
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
