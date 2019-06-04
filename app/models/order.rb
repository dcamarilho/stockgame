class Order < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  validates :price, presence: true
  validates :quantity, presence: true
  validates :amount, presence: true
end
