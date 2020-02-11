class AddPinToServers < ActiveRecord::Migration[6.0]
  def change
    add_column :servers, :pin, :integer
  end
end
