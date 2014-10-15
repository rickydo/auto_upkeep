# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(first_name: "Ricky", last_name: "Do", password: "password", password_confirmation: "password", email: "ricky.dop@gmail.com", username: "rickyd")

my_celica = Vehicle.create!(make: "Toyota", model: "Celica", year: 2004, style: "GT", engine_size: "1.8L", user_id: 1)
rav4 = Vehicle.create!(make: "Toyota", model: "Rav4", year: 1999, style: "Le", engine_size: "2.0L", user_id: 1)

motor = FluidChange.create!(type: "motor", name: "Redline", mileage: 12345, weight: "5W-30", vehicle_id: my_celica.id )

brakes = Part.create!(name: "brakes", mileage: 34352, part_number: "a cool part number", vehicle_id: my_celica.id)