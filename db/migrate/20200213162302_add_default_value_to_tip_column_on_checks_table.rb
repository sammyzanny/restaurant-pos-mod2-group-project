class AddDefaultValueToTipColumnOnChecksTable < ActiveRecord::Migration[6.0]
  def change
    change_column :checks, :tip, :decimal, default: "0.00"
  end
end
