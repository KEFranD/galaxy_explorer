class AddReferencesToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :planet, null: false, foreign_key: true
  end
end
