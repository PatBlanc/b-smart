class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :group
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :manager
      t.string :deputy_manager
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
