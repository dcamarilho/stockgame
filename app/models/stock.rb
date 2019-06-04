class Stock < ApplicationRecord
  has_many :price_histories
  has_many :orders
end
