puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating 5 restaurants..."

5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  category = %w[chinese italian japanese french belgian].sample
  attributes = { name: name, address: address, category: category }
  Restaurant.create!(attributes)

  puts "Created #{name}"
end

puts "Finished!"
