class User < ApplicationRecord
  has_many :orders
  has_many :stocks, through: :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
