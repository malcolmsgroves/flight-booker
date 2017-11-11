class Passenger < ApplicationRecord
  belongs_to :booking
  has_one :flight, through: :booking

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 }
end
