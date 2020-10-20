class CreateFoodReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :food_receipts do |t|
      t.integer :food_item_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
