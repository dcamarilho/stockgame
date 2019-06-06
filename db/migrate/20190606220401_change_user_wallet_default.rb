class ChangeUserWalletDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :wallet, :jsonb, default: {}
  end
end
