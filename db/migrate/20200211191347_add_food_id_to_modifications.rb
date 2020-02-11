class AddFoodToModifications < ActiveRecord::Migration[6.0]
  def change
    add_column :modifications, :food, :belongs_to
  end
end
