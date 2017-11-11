class ChangePassengerBookingAssociation < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :passenger_id
    add_column :passengers, :booking_id, :integer, foreign_key: true
    add_index :passengers, :booking_id
  end
end
