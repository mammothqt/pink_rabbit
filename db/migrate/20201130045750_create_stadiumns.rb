class CreateStadiumns < ActiveRecord::Migration[6.0]
  def change
    create_table :stadiumns do |t|
      t.string :name
      t.text :address
      t.integer :phone_number
      t.string :section

      t.timestamps
    end
  end
end
