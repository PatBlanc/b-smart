class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :manager
      t.string :deputy_manager
      t.string :phone

      t.timestamps
    end
  end
end