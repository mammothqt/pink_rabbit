class CreateStages < ActiveRecord::Migration[6.0]
  def change
    create_table :stages do |t|
      t.string :name
      t.text :address
      t.integer :phone_number
    end
  end
end
