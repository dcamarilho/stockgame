class User < ApplicationRecord
  has_many :orders
  has_many :stocks, through: :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader

  def invested_credits
    invested_credits = 0
    if self.wallet
      self.wallet.each do |key, value|
        stock = Stock.find(key.to_i)
        invested_credits += value * stock.price
      end
      invested_credits
    else
      invested_credits
    end
  end

  def total
    self.credits + self.invested_credits
  end

  def number_of_stocks
    i = 0
    self.wallet.each do |key, value|
      value > 0 ? i += 1 : i += 0
    end
    i
  end
end
