class AddExperienceToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :experience, :integer, default: 0
  end
end
