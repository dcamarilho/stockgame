class Stock < ApplicationRecord
  has_many :price_histories
  has_many :orders

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_stock_name,
    against: [ :name, :fullname ],
    using: {
      tsearch: { prefix: true }
    }
end
