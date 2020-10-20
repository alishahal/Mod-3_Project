class FoodReceipt < ApplicationRecord
  belong_to :receipt
  belong_to :food_item
end
