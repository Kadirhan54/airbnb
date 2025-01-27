# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
5.times do |i|
  property = Property.create!({
    name: Faker::Lorem.unique.sentence(word_count: 3),
    description: Faker::Lorem.unique.sentence(word_count: 5),
    headline: Faker::Lorem.unique.sentence(word_count: 6),
    address_1: Faker::Address.street_address,
    address_2: Faker::Address.street_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country_code,

  })

  property.images.attach(io: File.open("db/images/property_#{i + 1}.jpg"), filename: property.name)
  property.images.attach(io: File.open("db/images/property_#{i + 6}.jpg"), filename: property.name)
end

    # latitude: Faker::Address.latitude,
    # longitude: Faker::Address.longitude,
    # price: Money.from_amount((50..100).to_a.sample, 'USD'),
    # bedroom_count: (2..5).to_a.sample,
    # bed_count: (4..10).to_a.sample,
    # guest_count: (4..20).to_a.sample,
    # bathroom_count: (1..4).to_a.sample,
    # user_id: User.all.sample.id

    
# Property.create!([
#   name: 'The White House',
#   headline: 'The White House',
#   description: 'The White House is the official residence and workplace of the president of the United States. It is located at 1600 Pennsylvania Avenue NW in Washington, D.C., and has been the residence of every U.S. president since John Adams in 1800.',
#   address_1: '1600 Pennsylvania Avenue NW',
#   address_2: '1600 Pennsylvania Avenue NW',
#   city: 'Washington',
#   state: 'DC',
#   country: 'US'
# ])

# Property.create!([
#   name: 'The White House',
#   headline: 'The White House',
#   description: 'The White House is the official residence and workplace of the president of the United States. It is located at 1600 Pennsylvania Avenue NW in Washington, D.C., and has been the residence of every U.S. president since John Adams in 1800.',
#   address_1: '1600 Pennsylvania Avenue NW',
#   address_2: '1600 Pennsylvania Avenue NW',
#   city: 'Washington',
#   state: 'DC',
#   country: 'US'
# ])


# Property.create!([
#   name: 'The White House',
#   headline: 'The White House',
#   description: 'The White House is the official residence and workplace of the president of the United States. It is located at 1600 Pennsylvania Avenue NW in Washington, D.C., and has been the residence of every U.S. president since John Adams in 1800.',
#   address_1: '1600 Pennsylvania Avenue NW',
#   address_2: '1600 Pennsylvania Avenue NW',
#   city: 'Washington',
#   state: 'DC',
#   country: 'US'
# ])
