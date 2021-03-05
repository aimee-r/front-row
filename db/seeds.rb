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
Order.destroy_all
Event.destroy_all
User.destroy_all

puts "Creating array of event images..."

img1 = 'https://static.billboard.com/files/2020/12/chloe-x-halle-tiny-desk-2020-billboard-1548-1607458577-compressed.jpg'
img2 = 'https://static.billboard.com/files/2021/02/02-The-Weeknd-Pepsi-Super-Bowl-LV-Halftime-Show-2021-billboard-1548-1612748085-compressed.jpg'
img3 = 'https://static.billboard.com/files/2021/02/Megan-Thee-Stallion-Cry-Baby-feat.-DaBaby-screenshot-2021-billboard-1548-1612475015-compressed.jpg'
img4 = 'https://wi-images.condecdn.net/image/NjJ1o3bO7AD/crop/1440/0.5235602094240838/f/boilerroom.jpg'
img5 = 'https://www.electronicbeats.net/app/uploads/2017/05/boiler-room.jpg'
img6 = 'https://images1.the-dots.com/1379127/boilerroom-truemusic-warsaw-229.jpeg?p=projectImage'
img7 = 'https://videos.boilerroom.tv/assets/boilerroomjpg.jpg'

event_img_arr =[img1, img2, img3, img4, img5, img6, img7]

puts "Creating artists..."
aimee = User.create!(first_name: 'Aimée', last_name: 'Rawlings', location: 'South Africa', dob: '1989-09-14', email: 'aimee@example.com', password: '123456', artist: true, artist_name: 'DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/aimee-r.png')
    aimee.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    aimee.save!
lukas = User.create!(first_name: 'Lukáš', last_name: 'Musílek',  location: 'Czech Republic', dob: '1989-09-14', email: 'lukas@example.com', password: '123456', artist: true, artist_name: 'DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/Lmusilek')
    lukas.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    lukas.save!
rob = User.create!(first_name: 'Roberto', last_name: 'Piancatelli', location: 'Italian', dob: '1989-09-14', email: 'rob@example.com', password: '123456', artist: true, artist_name: 'DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/RobertoPiancatelli.png')
    rob.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    rob.save!
jeremaia = User.create!(first_name: 'Jeremaia', last_name: 'Harrison', location: 'UK', dob: '1989-09-14', email: 'jeremaia@example.com', password: '123456', artist: true, artist_name: 'DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/JHarrison89.png')
    jeremaia.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    jeremaia.save!

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

puts customer_arr

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
    file = URI.open(event_img_arr.sample)
    event.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    event.save!
  end
end

event_count = (0..Event.count).to_a

puts "Assigning events to artists..."
puts "Customers buying tickets..."

Event.all.each do |event|
  rand(25..75).times do
    EventAttendee.create!(
      event_id: event.id,
      user_id: customer_arr.sample.id,
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



