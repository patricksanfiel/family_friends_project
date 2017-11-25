class User < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :reviews, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true

end
