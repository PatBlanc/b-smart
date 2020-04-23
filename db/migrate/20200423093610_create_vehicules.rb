class CreateVehicules < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicules do |t|
      t.string :brand
      t.string :model
      t.string :license_plate
      t.string :fuel_type
      t.integer :engine_size
      t.integer :year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
