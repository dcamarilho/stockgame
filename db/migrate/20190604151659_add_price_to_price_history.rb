class AddPriceToPriceHistory < ActiveRecord::Migration[5.2]
  def change
    add_column :price_histories, :price, :integer
  end
end
