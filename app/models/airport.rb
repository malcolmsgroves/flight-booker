class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: :start_id, class_name: 'Flight'
  has_many :arriving_flights, foreign_key: :finish_id, class_name: 'Flight'
end
