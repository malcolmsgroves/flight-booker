class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: :start_id, class_name: 'Airport'
  belongs_to :to_airport, foreign_key: :finish_id, class_name: 'Airport'

  def self.unique_dates
    self.select(:start).distinct
  end

  def self.search(parameters)
    self.where(start_id: parameters[:start_id],
               finish_id: parameters[:finish_id],
               start: parameters[:start]).all
  end
end
