class Stock < ApplicationRecord
  has_many :price_histories
  has_many :orders

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
