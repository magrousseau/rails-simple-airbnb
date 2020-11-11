
puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."
flat1 = { name: "Light & Spacious Garden Flat London", address: "10 Clifton Gardens London W9 1DT",  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 }
flat2 = { name: "Big mension", address: "7 Boundary St, London E2 7JE",  description: 'A beautiful mension with 6 bedrooms', price_per_night: 285, number_of_guests: 7 }
flat3 = { name: "Flat in city center", address: "56A Shoreditch High St, London E1 6PQ",  description: 'Perfectly located flat near shops and city center', price_per_night: 95, number_of_guests: 2 }
flat4 = { name: "Beautiful and modern house", address: "2 avenue de France, Paris",  description: 'Rare and very high standing house in the city', price_per_night: 395, number_of_guests: 6 }

[flat1, flat2, flat3, flat4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
