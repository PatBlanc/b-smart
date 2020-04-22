class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :id_store
      t.boolean :main,               default: true
      t.string :email,              null: false, default: ""
      t.string :phone
      t.datetime :vacation_start
      t.datetime :vacation_end

      t.timestamps
    end
  end
end
