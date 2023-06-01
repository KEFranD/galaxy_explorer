class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :departure_date
      t.date :arrival_date

      t.timestamps
    end
  end
end
