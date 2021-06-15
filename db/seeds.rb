# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Restaurant.destroy_all
Menu.destroy_all
Dishe.destroy_all


#User

user1 = User.create!(first_name: "Marceline", last_name: "Dupont", email: "test@test.fr", password:"123456")
user1.save!

user2 = User.create!(first_name: "Mathieu", last_name: "Durand", email: "mathieu@test.fr", password:"123456")
user2.save!

user3 = User.create!(first_name: "Brigite", last_name: "Bardeau", email: "brigite@test.fr", password:"123456")
user3.save!

user4 = User.create!(first_name: "Etienne", last_name: "Daho", email: "etienne@test.fr", password:"123456")
user4.save!

user5 = User.create!(first_name: "Daniel", last_name: "Balavoine", email: "daniel@test.fr", password:"123456")
user5.save!

user6 = User.create!(first_name: "Ringo", last_name: "Star", email: "ringo@test.fr", password:"123456")
user6.save!


# restaurant

crocodillo = Restaurant.create!(full_name: "il Crocodillo", speciality: "Italian", adress:"4 rue du général Guillaudot, Rennes", phone_number:"0615784952", email:"crocodillo@test.fr", dishes: napolitaine)
crocodillo.save!

el_caliente = Restaurant.create!(full_name: "el Caliente", speciality: "Mexican", adress:" 25 Boulevard de Metz 35, 35700 Rennes", phone_number:"0645478952", email:"caliente@test.fr")
el_caliente.save!

le_baguette = Restaurant.create!(full_name: "le Baguette", speciality: "French", adress:"129 Rue de Fougères, 35700 Rennes", phone_number:"061574574", email:"baguette@test.fr")
le_baguette.save!

the_murail = Restaurant.create!(full_name: "the Murail", speciality: "chinese", adress:"Place de la République, 35000 Rennes", phone_number:"0621854789", email:"murail@test.fr")
the_murail.save!

yoko = Restaurant.create!(full_name: "Yoko", speciality: "japan", adress:"27 Boulevard du Colombier, 35000 Rennes", phone_number:"0635487695", email:"yoko@test.fr")
yoko.save!

the_a_dream = Restaurant.create!(full_name: "the A Dream", speciality: "American", adress:"90 Rue de Châteaugiron, 35000 Rennes", phone_number:"0620147954", email:"theadream@test.fr")
the_a_dream.save!

#menu 
menu1 = Menu.create!(name:"plat + boisson", total_price: 11.30)
menu1.save!

#dishes crocodillo

napolitaine = Dishe.create!(name: "Napolitaine", price: 9, prep_time: 15, description:"tomate, olive, mozzarella")
napolitaine.save!

reine = Dishe.create!(name: "Reine", price: 10, prep_time: 15, description:"tomate, olive, mozzarella, jambon, champigon")
reine.save!

marguerita = Dishe.create!(name: "Marguerita", price: 12, prep_time: 15, description:"tomate, olive, mozzarella, anchois, filet d'huile olive")
marguerita.save!

fromagio = Dishe.create!(name: "4Fromagio", price: 13, prep_time: 15, description:"tomate, olive, mozzarella, chévre, parmesan, gorgonzolla, roquette, filet d'huile d'olive")
fromagio.save!

carbonara = Dishe.create!(name: "Carbonara", price: 12, prep_time: 15, description:"paste, yellow egg, black pepper, bacon")
carbonara.save!

bolognaise = Dishe.create!(name: "Bolognaise", price: 13, prep_time: 15, description:"paste, boeuf, tomato sauce")
bolognaise.save!

#dishes caliente

natcho = Dishe.create!(name: "Natcho", price: 9, prep_time: 8, description:"avocado, tomate, epices, creme")
natcho.save!

burrito = Dishe.create!(name: "Burrito", price: 9, prep_time: 8, description:"")
burrito.save!

tacos = Dishe.create!(name: "Tacos", price: 9, prep_time: 8, description:"viande hachée, coriandre, sauce tomate, oignons rouge")
tacos.save!

#dishes baguette

cuisse_de_grenouilles = Dishe.create!(name: "Cuisse de Grenouilles", price: 15, prep_time: 12, description:"cuisse de grenouille, beurre, trace de gluten, ail, persil")
cuisse_de_grenouilles.save!

soupe_vge = Dishe.create!(name: "Soupe VGE", price: 8 , prep_time: 5, description:"truffes noires, pate feuilletée, petit legume, bouillon de légumes")
soupe_vge.save!

#dishes murail
 
poulet_impérial = Dishe.create!(name: "Poulet_Impérial", price: 9  , prep_time: 8, description:"poulet coupé en dés, piment séché et cacahuètes")
poulet_impérial.save!

canard_laqué = Dishe.create!(name: "Canard Laqué de Pékin", price: 10, prep_time: 8, description:"canard laqué servie avec ses crêpes et de la sauce aux haricots sucrés")
canard_laqué.save!

boulettes = Dishe.create!(name: "Boulettes de porc braisées en sauce", price: 6, prep_time: 8, description:" boulettes de porc braisées en sauce épicée")
boulette.save!

#dishes yoko

soupe_miso = Dishe.create!(name: "Soupe Miso" , price: 9, prep_time: 5, description:"miso, champigon, poireaux, haricot mongo")
soupe_miso.save!

sushis = Dishe.create!(name: "Sushis" , price: 14, prep_time: 12, description:"riz, vinaigre, saumon, thon")
sushis.save!

yakitoris = Dishe.create!(name: "Yakitoris" , price: 10, prep_time: 8, description:"bœuf, champignons, poivrons, sauce soja")
yakitoris.save!

takoyakis = Dishe.create!(name: "Takoyakis" , price: 11, prep_time: 13, description:"poulpe, épices, gingembre")
takoyakis.save!

gyozas = Dishe.create!(name: "Gyozas" , price: 8, prep_time: 10, description:"boeuf, citronelle, coriander")
gyozas.save!

#dishes dream

américain = Dishe.create!(name: "Américain" , price: 12, prep_time: 13, description:"bread, french fries, double grilled steak, BBQ sauce")
américain.save!

cheese = Dishe.create!(name: "Cheese" , price: 12, prep_time: 13, description:"spicy cheddar, grilled steak, ketchup")
cheese.save!

vegie = Dishe.create!(name: "Vegie" , price: 12, prep_time: 13, description:"soja steack, colloslow salad, tartare sauce")
vegie.save!

           #nouriture et menu des restaurants

#retaurant 1 pizzeria

#restaurant1 = Food.create!(restaurant: crocodillo, dishes:napolitaine)
#restaurant1 = Food.create!(restaurant: crocodillo, dishes:reine)
#restaurant1 = Food.create!(restaurant: crocodillo, dishes:marguerita)
#restaurant1 = Food.create!(restaurant: crocodillo, dishes:fromagio)
#restaurant1 = Food.create!(restaurant: crocodillo, dishes:carbonara)
#restaurant1 = Food.create!(restaurant: crocodillo, dishes:bolognaise)
#
#restaurant1 = Menu.create!(name:"plat + boisson", total_price: 11.30)
#
##restaurant 2 mexicain
#
#restaurant2 = Food.create!(restaurant: el_caliente, dishes: tacosburrito)
#restaurant2 = Food.create!(restaurant: el_caliente, dishes: burrito)
#restaurant2 = Food.create!(restaurant: el_caliente, dishes: natcho)
#
#restaurant2 = Menu.create!(name:"plat + boisson", total_price: 11.30)
#
##restaurant 3 français
#
#restaurant3 = Food.create!(restaurant: le_baguette, dishes: cuisse_de_grenouilles)
#restaurant3 = Food.create!(restaurant: le_baguette, dishes: soupe_vge)
#
#restaurant3 = Menu.create!(name:"plat + boisson", total_price: 11.30)
#
##restaurant 4 chinois
#
#restaurant4 = Food.create!(restaurant: the_murail, dishes: poulet_impérial)
#restaurant4 = Food.create!(restaurant: the_murail, dishes: canard_laqué)
#restaurant4 = Food.create!(restaurant: the_murail, dishes: boulettes)
#
#restaurant4 = Menu.create!(name:"plat + boisson", total_price: 11.30)
#
##restaurant 5 japonais
#
#restaurant5 = Food.create!(restaurant: yoko, dishes: soupe_miso)
#restaurant5 = Food.create!(restaurant: yoko, dishes: sushis)
#restaurant5 = Food.create!(restaurant: yoko, dishes: yakitoris)
#restaurant5 = Food.create!(restaurant: yoko, dishes: takoyakis)
#restaurant5 = Food.create!(restaurant: yoko, dishes: gyozas)
#
#restaurant5 = Menu.create!(name:"plat + boisson", total_price: 11.30)
#
##restaurant 6 américains
#
#restaurant6 = Food.create!(restaurant: the_a_dream, dishes: américain)
#restaurant6 = Food.create!(restaurant: the_a_dream, dishes: cheese)
#restaurant6 = Food.create!(restaurant: the_a_dream, dishes: vegie)
#
#restaurant6 = Menu.create!(name:"plat + boisson", total_price: 11.30)
