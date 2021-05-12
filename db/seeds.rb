p "Cleaning the database..."
Restaurant.destroy_all

p "Creating new restaurants..."
5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: CATEGORIES.sample
  )
  puts "Restaurant #{restaurant.id} was created."
end
