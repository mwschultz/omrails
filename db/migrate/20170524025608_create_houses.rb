class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :owner
      t.string :st_address
      t.integer :house_id
      t.integer :price
      t.string :state
      t.integer :zip
      t.string :county

      t.timestamps
    end
  end
end
