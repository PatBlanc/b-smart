class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :main
      t.string :email
      t.string :phone
      t.datetime :vacation_start
      t.datetime :vacation_end
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
