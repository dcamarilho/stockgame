class PriceHistory < ApplicationRecord
  belongs_to :stock

  validates :price, presence: true
end
