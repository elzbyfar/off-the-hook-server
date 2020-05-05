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
  image: "client-side/App/assets/img/nemo.png",
)
ignatius = Character.create(
  name: "Ignatius",
  image: "client-side/App/assets/img/ignatius.png",
)
tummy_rub = Character.create(
  name: "Tummy Rub",
  image: "client-side/App/assets/img/tummy_rub.png",
)
ariana = Character.create(
  name: "Ariana",
  image: "client-side/App/assets/img/ariana.png",
)
loquacious = Character.create(
  name: "Loquacious",
  image: "client-side/App/assets/img/loquacious.png",
)
garrett = Character.create(
  name: "Garrett",
  image: "client-side/App/assets/img/garrett.png",
)
doug = Character.create(
  name: "Doug",
  image: "client-side/App/assets/img/doug.png",
)
roger_stan_smith = Character.create(
  name: "Roger Stan Smith",
  image: "client-side/App/assets/img/roger_stan_smith.png",
)

la_palma = Level.create(
  territory_name: "La Palma", 
  level_name: "Level One", 
  max_time: 210, 
  pellet_points_needed: 110, 
  background_image: "client-side/App/assets/img/background08.jpg"
)
el_hierro = Level.create(
  territory_name: "El Hierro", 
  level_name: "Level Two", 
  max_time: 220, 
  pellet_points_needed: 120, 
  background_image: "client-side/App/assets/img/background07.jpg"
)
el_gomera = Level.create(
  territory_name: "El Gomera", 
  level_name: "Level Three", 
  max_time: 230, 
  pellet_points_needed: 130, 
  background_image: "client-side/App/assets/img/background06.jpg"
)
tenerife = Level.create(
  territory_name: "Tenerife", 
  level_name: "Level Four", 
  max_time: 240, 
  pellet_points_needed: 140, 
  background_image: "client-side/App/assets/img/background05.jpg"
)
gran_canaria = Level.create(
  territory_name: "Gran Canaria", 
  level_name: "Level Five", 
  max_time: 250, 
  pellet_points_needed: 150, 
  background_image: "client-side/App/assets/img/background04.jpg"
)
fuerteventura = Level.create(
  territory_name: "Fuerteventura", 
  level_name: "Level Six", 
  max_time: 260, 
  pellet_points_needed: 160, 
  background_image: "client-side/App/assets/img/background03.jpg"
)
lanzarote = Level.create(
  territory_name: "Lanzarote", 
  level_name: "Level Seven", 
  max_time: 270, 
  pellet_points_needed: 170, 
  background_image: "client-side/App/assets/img/background02.jpg"
)


lou = User.create(
  name: "Lou",
  password: "123", 
  unlocked_characters: ["Nemo"], 
  unlocked_levels: ["Level One", "Level Two"],
  keys: 3
)

claudia = User.create(
  name: "Clau",
  password: "123", 
  unlocked_characters: ["Nemo"], 
  unlocked_levels: ["Level One"],
  keys: 0
)

lou_stat0 = Statistic.create(
  pellet_points: 321, 
  captured_key: true, 
  completed: true, 
  user_id: 1, 
  level_id: 1, 
  character_id: 1
)
lou_stat1 = Statistic.create(
  pellet_points: 8, 
  captured_key: false, 
  completed: false, 
  user_id: 1, 
  level_id: 2, 
  character_id: 1
)
lou_stat2 = Statistic.create(
  pellet_points: 151, 
  captured_key: false, 
  completed: false, 
  user_id: 1, 
  level_id: 1, 
  character_id: 2
)
lou_sta3 = Statistic.create(
  pellet_points: 399, 
  captured_key: false, 
  completed: false, 
  user_id: 1, 
  level_id: 1, 
  character_id: 1
)
lou_stat4 = Statistic.create(
  pellet_points: 146, 
  captured_key: false, 
  completed: true, 
  user_id: 1, 
  level_id: 1, 
  character_id: 1
)
clau_stat = Statistic.create(
  pellet_points: 203, 
  captured_key: true, 
  completed: true, 
  user_id: 2, 
  level_id: 1, 
  character_id: 1
)
