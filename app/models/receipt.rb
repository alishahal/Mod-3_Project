class Receipt < ApplicationRecord
  belongs_to :user 
  has_many :food_receipts
  has_many :food_items, through: :food_receipts

end
