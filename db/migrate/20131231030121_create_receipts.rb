class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.text :description
      t.integer :quantity
      t.integer :food_id

      t.timestamps
    end
  end
end
