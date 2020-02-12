class ChangeDefaultValueOfPriceOnModificationsTable < ActiveRecord::Migration[6.0]
  def change
    change_column_default :modifications, :price, from: "0.0", to: "0.00"
  end
end
