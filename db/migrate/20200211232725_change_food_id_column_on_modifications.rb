class ChangeFoodIdColumnOnModifications < ActiveRecord::Migration[6.0]
  def change
    rename_column :modifications, :food_id, :order_id
  end
end
