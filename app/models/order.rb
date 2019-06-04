class Order < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  validates :price, presence: true
  validates :quantity, presence: true
  validates :amount, presence: true
  validate :check_user_credit

  before_validation :calcule_amount
  after_save :update_credit

  def calcule_amount
    self.amount = self.price * self.quantity
  end

  def update_credit
    self.user.credits -= self.amount
    self.user.save
  end

  def check_user_credit
    errors.add(:user_insuficient_credit, 'insuficient credits') if self.user.credits < self.amount
  end
end
