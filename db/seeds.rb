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

Genre.destroy_all
EventGenre.destroy_all
EventAttendee.destroy_all
Event.destroy_all
User.destroy_all



puts "Creating artists..."
aimee = User.create!(first_name: 'Aimée', last_name: 'Rawlings', location: 'South Africa', dob: '1989-09-14', email: 'aimee@example.com', password: '123456', artist: true, artist_name: "DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/'  bio: 'DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
lukas = User.create!(first_name: 'Lukáš', last_name: 'Musílek',  location: 'Czech Republic', dob: '1989-09-14', email: 'lukas@example.com', password: '123456', artist: true, artist_name: "DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/'  bio: 'DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
rob = User.create!(first_name: 'Roberto', last_name: 'Piancatelli', location: 'Italian', dob: '1989-09-14', email: 'rob@example.com', password: '123456', artist: true, artist_name: "DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/'  bio: 'DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
jeremaia = User.create!(first_name: 'Jeremaia', last_name: 'Harrison', location: 'UK', dob: '1989-09-14', email: 'jeremaia@example.com', password: '123456', artist: true, artist_name: "DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/'  bio: 'DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )

puts "Saving artists into an array..."
artists = [aimee, lukas, rob, jeremaia]

puts "Creating 100 customers..."
puts "Pushing customers into array..."

customer_arr = []
100.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    dob: '1989-09-14',
    password: '123456'
    )
  user.save!
  customer_arr.push(user)
end

puts "Creating events..."

artists.each do |artist|
  rand(1..5).times do
    event = Event.new(
      event_name: Faker::Hipster.sentence,
      description: "The evening will consist of 9 sets from 15 artists spanning UK rap, hip hop, soul, grime & beyond. Alongside Lex Amor & Project Karnak's, we have exclusive DJ sets from Rei Sky & Rare Treat plus live PA performances from Josette Joseph & Temesgen, Dips & Lo-Wu, Intalekt & Billy Dukes, Ayeisha Raquel, Shumba Maasai x AfronautZu and Shaun Sky.",
      price_cents: rand(500..1000),
      start_time: DateTime.new(2021,3,23,8),
      end_time: DateTime.new(2021,3,23,10),
      city: Faker::Address.city,
      country: Faker::Address.country,
      user: artist
      )
    # file = URI.open('https://www.meditainment.com/images/dmImage/SourceImage/island-paradise.jpg')
    # island.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    event.save!
  end
end

event_count = (0..Event.count).to_a

puts "Assigning events to artists..."
puts "Customers buying tickets..."

Event.all.each do |event|
  rand(25..75).times do
    EventAttendee.create(
      event_id: event.id,
      user_id: customer_arr.sample,
      streaming_link: 'youtube.com'
      )
  end
end

puts "Creating genra table..."
50.times do
  genre = Genre.new(
    name: Faker::Music.genre
  )
  genre.save
end

puts "Adding genres to events..."
Event.all.each do |event|
  rand(1..3).times do
    EventGenre.create(
      event_id: event.id,
      genre_id: Genre.all.sample.id
      )
  end
end

puts "..."
puts "Seed complete!"

# Event.count.times do
#   EventAttendees.create(
#     event_id: event_count.sample
#     streaming_link: 'youtube.com'
#     rand(25..75).times do
#     user_id: customer_arr.sample
#     )
#   end
# end

# EventAttendees.new

# events_saved = Events.count


# event_id_arr = []
# id = 1
# event_ids = Events.count
# events_id.each do {
#   event_id_arr.push(id)
#   id += 1
# }

# Events.each do {
#   event_id: events_ids.sample
#   rand(25..75).times do
#   user_id: customer_arr.sample
#   end
# end
# }





