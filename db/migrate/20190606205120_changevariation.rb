class Changevariation < ActiveRecord::Migration[5.2]
  def change
    change_column :stocks, :variation, :string
  end
end
