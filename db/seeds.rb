# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "faker"

puts "Running seed..."
puts "Destorying tables..."

# Order.destroy_all
# Booking.destroy_all
# Island.destroy_all
# User.destroy_all

puts "Creating artists..."
aimee = User.create!(first_name: 'Aimée', last_name: 'Rawlings', nationality: 'South Africa', dob: '1989-09-14', email: 'aimee@example.com', password: '123456')
lukas = User.create!(first_name: 'Lukáš', last_name: 'Musílek',  nationality: 'Czech Republic', dob: '1989-09-14', email: 'lukas@example.com', password: '123456')
rob = User.create!(first_name: 'Roberto', last_name: 'Piancatelli', nationality: 'Italian', dob: '1989-09-14', email: 'rob@example.com', password: '123456')
jeremaia = User.create!(first_name: 'Jeremaia', last_name: 'Harrison', nationality: 'UK', dob: '1989-09-14', email: 'jeremaia@example.com', password: '123456')

artist = [aimee, lukas, rob, jeremaia]

artist.each do |user|

  rand(1..5).times do

    event = Event.new(
      event_name:
      description:
      price_cents: rand(300..500)
      start_time:
      end_time:
      city:
      country:
      user: user,
      )
    file = URI.open('https://www.meditainment.com/images/dmImage/SourceImage/island-paradise.jpg')
    island.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    island.save!
  end
end


