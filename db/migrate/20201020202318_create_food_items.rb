class CreateFoodItems < ActiveRecord::Migration[6.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :price
      t.string :spicy
      t.string :food_type

      t.timestamps
    end
  end
end
