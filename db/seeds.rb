
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

Message.destroy_all
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

event_name1 = "Shunaji X Boogey Town"
event_name2 = "Streaming From Home | #13"
event_name3 = "Jazz Rythyms! Live on Front Row "
event_name4 = "Instrumental Orchestra Presents"
event_name5 = "Live in London DJ Set"
event_name6 = "Streaming From Isolation | #21"
event_name7 = "Love To The World on Front Row"
event_name8 = "Front Row  x Sugar Mountain Live DJ Set"
event_name9 = "Front Row x Amplified"
event_name10 = "Sounds of the Underground"
event_name11 = "Mellow Moves To Your Living Room"
event_name12 = "Dance with me! A Midnight Special"
event_name13 = "Techno Party X Machina"
event_name14 = "Lose Yourself To Dance"

event_name_arr = [event_name1, event_name2, event_name3, event_name4, event_name5, event_name6, event_name7, event_name8, event_name9, event_name10, event_name11, event_name12, event_name13, event_name14]

country1 = "France 🇫🇷"
country2 = "Australia 🇦🇺"
country3 = "Czech Republic 🇨🇿"
country4 = "United Kingdom 🇬🇧"
country5 = "South Africa 🇿🇦"
country6 = "Italy 🇮🇹"
country7 = "Portugal 🇵🇹"
country8 = "Spain 🇪🇸"
country9 = "United States 🇺🇸"
country10 = "Canada 🇨🇦"
country11 = "Ireland 🇮🇪"
country12 = "Greece 🇬🇷"
country13 = "Sweeden 🇸🇪"
country14 = "South Korea 🇰🇷"
country15 = "Canary Islands 🇮🇨"
country16 = "Philippines 🇵🇭"
country17 = "United Arab Emirates 🇦🇪"
country18 = "Latvia 🇱🇻"
country19 = "Japan 🇯🇵"
country20 = "Russia 🇷🇺"


country_arr =[country1, country2, country3, country4, country5, country6, country7, country8, country9, country10, country11, country12, country13, country14, country15, country16, country17, country18, country19, country20]


puts "Creating artists..."
aimee = User.create!(first_name: 'Aimée', last_name: 'Rawlings', location: 'South Africa', dob: '1989-09-14', email: 'aimee@example.com', password: '123456', artist: true, artist_name: 'DJ Amzy', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instagram: 'https://www.facebook.com/daftpunk/', youtube: 'https://www.youtube.com/embed/2aFcwLgO1wI',  bio: "DJ Amzy has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/aimee-r.png')
    aimee.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    aimee.save!

yoda = User.create!(first_name: 'DJ', last_name: 'Yoda', location: 'London', dob: '1989-09-14', email: 'yoda@example.com', password: '123456', artist: true, artist_name: 'DJ Yoda', bank_details: '121212 12345678', spotify: 'https://open.spotify.com/artist/134rP599PLJMjrccfctkmX', facebook: 'https://www.facebook.com/daftpunk/', instagram: 'https://www.youtube.com/embed/2aFcwLgO1wI', youtube: 'https://www.youtube.com/embed/pcnUNgCtSOk',  bio: "DJ Yoda has been at the nexus of music, fashion, and nightlife for over half his living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://images.unsplash.com/photo-1505964253539-4ca5a36328dd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2672&q=80')
    yoda.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    yoda.save!

ife = User.create!(first_name: 'ife', last_name: 'Odugbesan', location: 'London', dob: '1989-09-14', email: 'ife@example.com', password: '123456', artist: true, artist_name: 'Ife', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instagram: 'https://www.facebook.com/daftpunk/', youtube: 'https://www.facebook.com/daftpunk/',  bio: "DJ Ife has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/ifeodugbesan.png')
    ife.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    ife.save!

romeo = User.create!(first_name: 'romeo', last_name: 'Saint-Albin', location: 'London', dob: '1989-09-14', email: 'romeo@example.com', password: '123456', artist: true, artist_name: 'DJ Romeo', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instagram: 'https://www.facebook.com/daftpunk/', youtube: 'https://www.facebook.com/daftpunk/',  bio: "DJ Romeo has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, theres only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/oceantidote.png')
    romeo.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    romeo.save!

lukas = User.create!(first_name: 'Lukáš', last_name: 'Musílek',  location: 'Czech Republic', dob: '1989-09-14', email: 'lukas@example.com', password: '123456', artist: true, artist_name: 'MC Lukas', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instagram: 'https://www.facebook.com/daftpunk/', youtube: 'https://www.facebook.com/daftpunk/',  bio: "DJ Lukas has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/Lmusilek')
    lukas.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    lukas.save!
rob = User.create!(first_name: 'Roberto', last_name: 'Piancatelli', location: 'Italian', dob: '1989-09-14', email: 'rob@example.com', password: '123456', artist: true, artist_name: 'Mr 50p', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instagram: 'https://www.facebook.com/daftpunk/', youtube: 'https://www.facebook.com/daftpunk/',  bio: "DJ Rob has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/RobertoPiancatelli.png')
    rob.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    rob.save!
jeremaia = User.create!(first_name: 'Jeremaia', last_name: 'Harrison', location: 'UK', dob: '1989-09-14', email: 'jeremaia@example.com', password: '123456', artist: true, artist_name: 'DJ Jamalam', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/daftpunk/', instagram: 'https://www.facebook.com/daftpunk/', youtube: 'https://www.facebook.com/daftpunk/',  bio: "DJ Jeremaia has been at the nexus of music, fashion, and nightlife for over half her living years as the go-to deejay for music impresarios, entertainment moguls, fashion icons, cultural trendsetters, and even world leaders. When President Obama wanted a deejay for both of his Inaugurations and his fiftieth birthday party at the White House, there's only one person he called. When Oprah Winfrey celebrated the opening of her school in South Africa on New Years Eve, there’s only one person she called. And when Jay Z needed a deejay for his wedding to Beyoncé, theres only one person he called." )
    file = URI.open('https://github.com/JHarrison89.png')
    jeremaia.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    jeremaia.save!

diego = User.create!(first_name: 'Diego', last_name: 'Philips', location: 'UK', dob: '1989-09-14', email: 'diego@example.com', password: '123456', artist: true, artist_name: 'Diego Philips', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/diegophilips/', instagram: 'https://www.instagram.com/dphilips/', spotify: 'https://open.spotify.com/artist/3ccrJOoILrsst0M1V0PlP3', youtube: 'https://www.youtube.com/embed/2aFcwLgO1wI',  bio: "Diego Philips is a singer/songwriter and guitarist from Belgium whose songs resonate within the heart and the soul. If you are looking for songs that bring comfort to your soul, look no further, as this is what Diego excels at. With influences such as ,  and , his songs are filled with feelings and emotions. In his own words, “music is a refuge, a space to bring people together as a community anyone can identify with”. But it doesn’t stop here: as an aesthete and lover of all things beautiful, he quotes musical poets like  and  as his main role models. The musician gives a lot of importance to the stories he tells through his lyrics - in which he tries to weave heartfelt and intimate poetry through every line. Love, sadness, spirituality, cultures and differences, these are the themes the songwriter tackles in his lyrics but let it be said: it is warmth and sharing experiences that he celebrates, always with a smile on his face." )
file = URI.open('https://fromsophiawithlove.com/wp-content/uploads/2020/05/53192350_1291069211047265_2952491374039007232_o-scaled.jpg')
diego.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
diego.save!

painted = User.create!(first_name: 'Painted', last_name: 'Flowers', location: 'Cape Town', dob: '1989-09-14', email: 'painted@example.com', password: '123456', artist: true, artist_name: 'Painted Flowers', bank_details: '121212 12345678', facebook: 'https://www.facebook.com/diegophilips/', instagram: 'https://www.instagram.com/dphilips/', spotify: 'https://open.spotify.com/artist/3ccrJOoILrsst0M1V0PlP3', youtube: 'https://www.youtube.com/embed/4vgfUi1bY8Y',  bio: "Painted Flowers formed in Cape Town. Their sound is described as folky and melodic, something to canoe down the river to. If you are looking for songs that bring comfort to your soul, look no further, as this is what they excel at. In their own words, “music is a refuge, a space to bring people together as a community anyone can identify with”. But it doesn’t stop here: as an aesthete and lover of all things beautiful, they quote musical poets like  and  as his main role models. The musician gives a lot of importance to the stories they tell through their lyrics - in which they try to weave heartfelt and intimate poetry through every line." )
file = URI.open('https://texxandthecity.com/wp-content/uploads/2020/11/Painted-Flowers-1.png')
painted.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
painted.save!

bonobo = User.create!(first_name: 'Bon', last_name: 'Obo', location: 'Cape Town', dob: '1989-09-14', email: 'bonobo@example.com', password: '123456', artist: true, artist_name: 'Bonobo', bank_details: '121212 12345678', spotify: 'https://open.spotify.com/artist/0cmWgDlu9CwTgxPhf403hb', facebook: 'https://www.facebook.com/diegophilips/', instagram: 'https://www.instagram.com/dphilips/', spotify: 'https://open.spotify.com/artist/3ccrJOoILrsst0M1V0PlP3', youtube: 'https://www.youtube.com/embed/ERLy4Dam1pU',  bio: "Bonobo's rise has been stealthy but unstoppable and Simon Green, the man behind it all, is now one of the biggest electronic artists of our time, with 6 albums and a revered live show that has seen him play to sold-out crowds across the globe, including multiple shows at Alexandra Palace, Glastonbury, Coachella and Red Rocks Amphitheatre. His last album “Migration” reached #5 in the UK album charts and was GRAMMY nominated along with his subsequent “Linked” single. In 2019 he released the track “Ibrik” via his ‘fabric presents’ compilation and followed up in 2020 with a remix of Mercury Prize winner Michael Kiwanuka’s soulful “Final Days.” In 2020 Bonobo teamed up with producer Totally Enormous Extinct Dinosaurs to deliver “Heartbreak,” a track that builds on the foundations of electronic music, tracing a line from the dance floors of 1980’s NYC to today." )
file = URI.open('https://www.dancemusicnw.com/wp-content/uploads/2014/10/Bonobo.jpg')
bonobo.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
bonobo.save!

puts "Saving artists into an array..."
artists = [aimee, yoda, ife, romeo, lukas, rob, jeremaia, diego, painted, bonobo]

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
  rand(1..2).times do
    event = Event.new(
      event_name: event_name_arr.sample,
      description: "The evening will consist of 9 sets from 15 artists spanning UK rap, hip hop, soul, grime & beyond. Alongside Lex Amor & Project Karnak's, we have exclusive DJ sets from Rei Sky & Rare Treat plus live PA performances from Josette Joseph & Temesgen, Dips & Lo-Wu, Intalekt & Billy Dukes, Ayeisha Raquel, Shumba Maasai x AfronautZu and Shaun Sky.",
      price_cents: rand(200..1000),
      start_time: DateTime.new(2021, rand(3..9), rand(12..30), rand(1..23)),
      end_time: DateTime.new(2021,6,20,9),
      city: Faker::Address.city,
      country: country_arr.sample,
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
    Order.create!(
      state: "Paid",
      event_sku: event.sku,
      amount_cents: event.price_cents,
      event_id: event.id,
      user_id: customer_arr.sample.id,
      )
  end
end

puts "Creating genre table..."
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



