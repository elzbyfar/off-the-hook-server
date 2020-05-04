# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.delete_all
Level.delete_all
User.delete_all
Statistic.delete_all

nemo = Character.create(
  name: "Nemo",
  image: "client-side/App/assets/img/nemo01.png",
)
loquacious = Character.create(
  name: "Loquacious",
  image: "client-side/App/assets/img/loquacious01.png",
)
ignatius = Character.create(
  name: "Ignatius",
  image: "client-side/App/assets/img/ignatius01.png",
)
fugacious = Character.create(
  name: "Fugacious",
  image: "client-side/App/assets/img/fugacious01.png",
)
nemo = Character.create(
  name: "Nemo II",
  image: "client-side/App/assets/img/nemo01.png",
)
loquacious = Character.create(
  name: "Loquacious II",
  image: "client-side/App/assets/img/loquacious01.png",
)
ignatius = Character.create(
  name: "Ignatius II",
  image: "client-side/App/assets/img/ignatius01.png",
)
fugacious = Character.create(
  name: "Fugacious II",
  image: "client-side/App/assets/img/fugacious01.png",
)

la_palma = Level.create(
  name: "Level One: La Palma", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background08.jpg"
)
el_hierro = Level.create(
  name: "Level Two: El Hierro", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background07.jpg"
)
el_gomera = Level.create(
  name: "Level Three: El Gomera", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background06.jpg"
)
tenerife = Level.create(
  name: "Level Four: Tenerife", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background05.jpg"
)
gran_canaria = Level.create(
  name: "Level Five: Gran Canaria", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background04.jpg"
)
fuerteventura = Level.create(
  name: "Level Six: Fuerteventura", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background03.jpg"
)
lanzarote = Level.create(
  name: "Level Seven: Lanzarote", 
  max_time: 120, 
  nutrients_needed: 100, 
  background_image: "client-side/App/assets/img/background02.jpg"
)


lou = User.create(
  name: "Lou",
  password: "123", 
  unlocked_characters: ["Nemo", "Garrett"], 
  unlocked_levels: ["Level One: La Palma", "Level Two: El Hierro"],
  keys: 1
)

claudia = User.create(
  name: "Clau",
  password: "123", 
  unlocked_characters: ["Nemo", "Ariana"], 
  unlocked_levels: ["Level One: La Palma"],
  keys: 0
)

lou_stat = Statistic.create(
  score: 101, 
  time_remaining: 24, 
  captured_key: true, 
  completed: true, 
  user_id: 1, 
  level_id: 1, 
  character_id: 1
)