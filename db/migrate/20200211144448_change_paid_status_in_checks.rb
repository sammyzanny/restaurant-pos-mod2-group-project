class ChangePaidStatusInChecks < ActiveRecord::Migration[6.0]
  def change
    change_column :checks, :paid_status, :string, default: "unpaid"
  end
end
