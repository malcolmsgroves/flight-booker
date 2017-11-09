class ChangeStartToDate < ActiveRecord::Migration[5.1]
  def change
    change_column :flights, :start, :date
  end
end
