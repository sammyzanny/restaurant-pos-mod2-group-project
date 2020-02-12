class AddTipToChecks < ActiveRecord::Migration[6.0]
  def change
    add_column :checks, :tip, :decimal, precision: 8, scale: 2
  end
end
