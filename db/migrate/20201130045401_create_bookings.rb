class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.integer :status, default: 0
      t.integer :manager_id
      t.integer :stadium_id

      t.timestamps
    end
  end
end
