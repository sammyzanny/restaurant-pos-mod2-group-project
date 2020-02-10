class CreateModifications < ActiveRecord::Migration[6.0]
  def change
    create_table :modifications do |t|
      t.text :note
      t.decimal :price, precision: 8, scale: 2, default: 0 

      t.timestamps
    end
  end
end
