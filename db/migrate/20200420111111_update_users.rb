class AddAddressToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :vehicules_id, :integer
    add_column :users, :company, :string
  end
end
