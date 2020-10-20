class FoodItem < ApplicationRecord
  has_many :food_receipts
  has_many :receipts, through: :food_receipt
end
