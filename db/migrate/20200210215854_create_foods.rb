class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.string :type

      t.timestamps
    end
  end
end
