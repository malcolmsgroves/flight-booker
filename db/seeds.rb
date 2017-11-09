# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airportCodes = ['SFO', 'NYC', 'ANC', 'BTV', 'PWM', 'DEN']

airportCodes.each do |code|
  Airport.create(name: code)
end

20.times do
  airport_ids = (0...6).to_a.shuffle!
  (0...3).each do |index|
    Flight.create(start: Faker::Date.forward(30),
                  duration: 2.hours,
                  start_id: airport_ids[index * 2],
                  finish_id: airport_ids[index * 2 + 1])
  end
end
