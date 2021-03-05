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

img1 = 'https://images.unsplash.com/photo-1496641924343-17b88ba0c673?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
img2 = 'https://images.unsplash.com/photo-1522536421511-14c9073df899?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img3 = 'https://images.unsplash.com/photo-1598387992619-f86d5293bace?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80'
img4 = 'https://wi-images.condecdn.net/image/NjJ1o3bO7AD/crop/1440/0.5235602094240838/f/boilerroom.jpg'
img5 = 'https://images.unsplash.com/photo-1587304123078-167157cbac1c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img6 = 'https://images.unsplash.com/photo-1555619662-99b91fcec542?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img7 = 'https://images.unsplash.com/photo-1605115593378-7b6864369479?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1472&q=80'
img8 = 'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img9 = 'https://images.unsplash.com/photo-1605115593378-7b6864369479?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1472&q=80'
img10 = 'https://images.unsplash.com/photo-1499470932971-a90681ce8530?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img11 = 'https://images.unsplash.com/photo-1471565661762-b9dfae862dbe?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img12 = 'https://images.unsplash.com/photo-1568480046613-6e3b671c66d2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img13 = 'https://images.unsplash.com/photo-1518499845966-9a86ddb68051?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img14 = 'https://images.unsplash.com/photo-1612633509856-e10888c2df9e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
img15 = 'https://images.unsplash.com/photo-1544191674-3d2c0f2342f8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1062&q=80'

event_img_arr =[img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15]

event_name1 = "Shunaji"
event_name2 = "Grace Weber - Live on Front Row"
event_name3 = "Daniel Caesar - Live on Front Row "
event_name4 = "Sama' Abdulhadi Presents"
event_name5 = "Yaeji Boiler - DJ Set"
event_name6 = "Peggy Gou - Streaming From Isolation | #21"
event_name7 = "Folamour presents - Love To The World on Front Row "
event_name8 = "Gerd Janson - Front Row  x Sugar Mountain 2018 DJ Set"
event_name9 = "Denis Sulta - Front Row x AVA "
event_name10 = "Laurent Garnier"

event_name_arr = [event_name1, event_name2, event_name3, event_name4, event_name5, event_name6, event_name7, event_name8, event_name9, event_name10 ]


puts "Creating artists..."
aimee = User.create!(first_name: 'Aimée', last_name: 'Rawlings', location: 'South Africa', dob: '1989-09-14', email: 'aimee@example.com', password: '123456', artist: true, artist_name: 'DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/aimee-r.png')
    aimee.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    aimee.save!

anne = User.create!(first_name: 'Anne', last_name: 'De Joly', location: 'London', dob: '1989-09-14', email: 'anne@example.com', password: '123456', artist: true, artist_name: 'DJ Anne de Joly', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Anne has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/Annedj.png')
    anne.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    anne.save!

ife = User.create!(first_name: 'ife', last_name: 'Odugbesan', location: 'London', dob: '1989-09-14', email: 'ife@example.com', password: '123456', artist: true, artist_name: 'DJ Ife', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Ife has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/ifeodugbesan.png')
    ife.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    ife.save!

leonard = User.create!(first_name: 'Leonard', last_name: 'Percival', location: 'London', dob: '1989-09-14', email: 'leonard@example.com', password: '123456', artist: true, artist_name: 'DJ leonard', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Leonard has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/oceantidote.png')
    leonard.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    leonard.save!

romeo = User.create!(first_name: 'romeo', last_name: 'Saint-Albin', location: 'London', dob: '1989-09-14', email: 'romeo@example.com', password: '123456', artist: true, artist_name: 'DJ Romeo', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Romeo has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/oceantidote.png')
    romeo.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    romeo.save!

lukas = User.create!(first_name: 'Lukáš', last_name: 'Musílek',  location: 'Czech Republic', dob: '1989-09-14', email: 'lukas@example.com', password: '123456', artist: true, artist_name: 'MC Lukas', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Lukas has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/Lmusilek')
    lukas.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    lukas.save!
rob = User.create!(first_name: 'Roberto', last_name: 'Piancatelli', location: 'Italian', dob: '1989-09-14', email: 'rob@example.com', password: '123456', artist: true, artist_name: 'MC 50p', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Rob has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/RobertoPiancatelli.png')
    rob.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    rob.save!
jeremaia = User.create!(first_name: 'Jeremaia', last_name: 'Harrison', location: 'UK', dob: '1989-09-14', email: 'jeremaia@example.com', password: '123456', artist: true, artist_name: 'DJ Jamalam', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instergram: 'https://www.facebook.com/daftpunk/', twitter: 'https://www.facebook.com/daftpunk/',  bio: "DJ Jeremaia has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/JHarrison89.png')
    jeremaia.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    jeremaia.save!

puts "Saving artists into an array..."
artists = [aimee, anne, ife, leonard, romeo, lukas, rob, jeremaia]

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
  rand(1..4).times do
    event = Event.new(
      event_name: event_name_arr.sample,
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
    EventAttendee.create(
      event_id: event.id,

      user_id: customer_arr.sample,
      )
  end
end

puts "Creating genra table..."
100.times do
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



