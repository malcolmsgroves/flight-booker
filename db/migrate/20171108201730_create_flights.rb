class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.datetime :start
      t.time :duration

      t.timestamps
    end
    add_foreign_key :flights, :start_id
    add_foreign_key :flights, :finish_id
  end
end
