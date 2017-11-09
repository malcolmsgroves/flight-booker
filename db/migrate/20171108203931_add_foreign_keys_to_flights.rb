class AddForeignKeysToFlights < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :start_id, :integer, foreign_key: true
    add_column :flights, :finish_id, :integer, foreign_key: true
  end
end
