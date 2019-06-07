class AddPhotoToStock < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :photo, :string
  end
end
