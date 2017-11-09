class AddIndexToFlights < ActiveRecord::Migration[5.1]
  def change
    add_index :flights, :finish_id
    add_index :flights, :start_id
  end
end
