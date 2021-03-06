class User < ApplicationRecord
  has_many :orders
  has_many :stocks, through: :orders
  devise :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]

  validates :username, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.provider = auth.provider
      user.username = auth.info.name
      user.uid = auth.uid
      user.password = Devise.friendly_token[0,20]
    end
  end

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

  def calculate_level
    case self.experience
    when 0..19
      level = 1
    when 20..39
      level = 2
    when 40..79
      level = 3
    when 80..159
      level = 4
    when 160..319
      level = 5
    when 160..319
      level = 6
    end
    return level
  end

  def calculate_maxhp
    case self.calculate_level
    when 1
      maxhp = 20
    when 2
      maxhp = 40
    when 3
      maxhp = 80
    when 4
      maxhp = 160
    when 5
      maxhp = 320
    when 6
      maxhp = 640
    end
    return maxhp
  end

  def calculate_range
    quotient = (self.experience.to_f / self.calculate_maxhp.to_f) * 100
    case quotient
    when 0..25
      range = "a"
    when 26..49
      range = "b"
    when 50..75
      range = "c"
    when 76..99
      range = "d"
    end
    return range
  end

  def evolution
    (self.total - 1000) / 100
  end

  def ranking
    users = User.all.sort_by(&:total).reverse!
    i = 1
    users.each_with_index do |user, index|
      if  user == self
        i += index
      end
    end
    return i
  end
end
