class AddWalletToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wallet, :jsonb
  end
end
