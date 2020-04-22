class AddColumnsToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :group, :string
    add_column :stores, :latitude, :float
    add_column :stores, :longitude, :float
    add_column :stores, :email, :string
  end
end
