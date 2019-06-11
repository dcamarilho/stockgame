class Order < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  validates :price, presence: true
  validates :quantity, presence: true
  validates :amount, presence: true
  validate :check_user_credit
  validate :check_user_wallet_stock_quantity

  before_validation :calcule_amount
  after_save :update_credit
  after_save :update_user_wallet

  private

  def calcule_amount
    self.amount = self.price * self.quantity
  end

  def update_credit
    self.user.credits -= self.amount
    self.user.save
  end

  def update_user_wallet
    user = self.user
    if user.wallet[self.stock_id.to_s].present?
      user.wallet[self.stock_id.to_s] += self.quantity
    else
      user.wallet[self.stock_id.to_s] = self.quantity
    end
    user.save
  end

  def check_user_credit
    errors.add(:user_insuficient_credit, 'insuficient credits') if self.user.credits < self.amount
  end

  def check_user_wallet_stock_quantity
    wallet_quantity = self.user.wallet[self.stock_id.to_s] || 0
    errors.add(:insuficient_stock_amount, 'insuficient stock amount') if wallet_quantity + self.quantity < 0
  end
end
