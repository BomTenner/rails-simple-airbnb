# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating dummy flats"

4.times do
  flat = Flat.new(
    name: Faker::Cannabis.strain,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    price_per_night: [25, 35, 45, 55, 65, 75].sample,
    number_of_guests: [1, 2, 3, 4, 5].sample
  )
  flat.save!
end

puts "Finished"
