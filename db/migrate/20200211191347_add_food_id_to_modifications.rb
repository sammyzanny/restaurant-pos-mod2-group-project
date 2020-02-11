class AddFoodIdToModifications < ActiveRecord::Migration[6.0]
  def change
    add_column :modifications, :food_id, :integer
  end
end
