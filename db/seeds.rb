require 'faker'

puts "Cleaning..."
Flat.destroy_all
puts "DB cleaned!"
puts "Creating Flats"
5.times do
  flat = Flat.create(
    name: Faker::Space.moon,
    address: Faker::Space.constellation,
    description: Faker::Space.galaxy,
    price_per_night: rand(100..200),
    number_of_guests: rand(1..10)
  )
  puts "#{flat.name} - adress: #{flat.address} - description #{flat.description} created"
end

puts "Done!"
