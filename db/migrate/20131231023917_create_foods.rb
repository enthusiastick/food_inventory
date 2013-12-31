class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, unique: true

      t.timestamps
    end
  end
end
