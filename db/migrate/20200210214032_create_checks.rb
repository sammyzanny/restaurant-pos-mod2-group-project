class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.string :paid_status
      t.belongs_to :server, null: false, foreign_key: true

      t.timestamps
    end
  end
end
