class AddVariationToStock < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :variation, :float
  end
end
