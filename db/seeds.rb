require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
    )
  puts "Restaurant #{restaurant.id} is created"
  10.times do
    review = Review.create(
      content: Faker::Address.street_name,
      rating: rand(1..5),
      restaurant_id: restaurant.id
      )
  end
end

puts "Finished!"
