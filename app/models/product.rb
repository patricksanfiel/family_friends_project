class Product < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :description, :name, presence: true
  validates :price_in_cents, numericality: {greater_than: 0}
  # def formatted_price
  #   price_in_dollars = number_to_currency(price_in_cents)
  #   # price_in_dollars = price_in_cents.to_f / 100
  #   # format("%.2f", price_in_dollars)
  # end
end
