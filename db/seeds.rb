require 'faker'

Flat.destroy_all
puts "Generating 4 flats"

4.times do
  flat = Flat.new(
    name: Faker::Superhero.name,
    address: Faker::Address.full_address,
    description: Faker::Quote.most_interesting_man_in_the_world,
    price_per_night: (0..200).to_a.sample,
    number_of_guests: (1..6).to_a.sample
  )
  flat.save!
end
puts "finished"
