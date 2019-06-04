class CreatePriceHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :price_histories do |t|
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
