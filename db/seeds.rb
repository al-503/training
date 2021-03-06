require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#RestaurantDishe.destroy_all
#RestaurantMenu.destroy_all
User.destroy_all
Restaurant.destroy_all
Menu.destroy_all
Dishe.destroy_all

# restaurant_dishe
#crocodillo_dishe1 = RestaurantDishe.create!(restaurant: crocodillo, dishe: napolitaine)
#crocodillo_dishe1.save!
## restaurant_menu
#
#crocodillo_menu1 = RestaurantMenu.create!(restaurant: crocodillo, menu: menu1)
#crocodillo_menu1.save!

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

#All dishes

#dishes crocodillo  
#crocodillo_dish = Dishe.create!([{
  #  name: "Napolitaine",
#  price: 9,
#  preptime: 15,
#  description:"tomate, olive, mozzarella"
#},
#{
  #  name: "Reine",
#  price: 9,
#  preptime: 15,
#  description:"tomate, olive, mozzarella, jambon, champigon"
#}
#])

napolitaine = Dishe.create!(name: "Napolitaine", price: 9, preptime: 15, description:"tomate, olive, mozzarella")
napolitaine.save!

reine = Dishe.create!(name: "Reine", price: 10, preptime: 15, description:"tomate, olive, mozzarella, jambon, champigon")
reine.save!

marguerita = Dishe.create!(name: "Marguerita", price: 12, preptime: 15, description:"tomate, olive, mozzarella, anchois, filet d'huile olive")
marguerita.save!

fromagio = Dishe.create!(name: "4Fromagio", price: 13, preptime: 15, description:"tomate, olive, mozzarella, ch??vre, parmesan, gorgonzolla, roquette, filet d'huile d'olive")
fromagio.save!

carbonara = Dishe.create!(name: "Carbonara", price: 12, preptime: 15, description:"paste, yellow egg, black pepper, bacon")
carbonara.save!

bolognaise = Dishe.create!(name: "Bolognaise", price: 13, preptime: 15, description:"paste, boeuf, tomato sauce")
bolognaise.save!

#dishes caliente

natcho = Dishe.create!(name: "Natcho", price: 9, preptime: 8, description:"avocado, tomate, epices, creme")
natcho.save!

burrito = Dishe.create!(name: "Burrito", price: 9, preptime: 8, description:"muy caliente")
burrito.save!

tacos = Dishe.create!(name: "Tacos", price: 9, preptime: 8, description:"viande hach??e, coriandre, sauce tomate, oignons rouge")
tacos.save!

#dishes baguette

cuisse_de_grenouilles = Dishe.create!(name: "Cuisse de Grenouilles", price: 15, preptime: 12, description:"cuisse de grenouille, beurre, trace de gluten, ail, persil")
cuisse_de_grenouilles.save!

soupe_vge = Dishe.create!(name: "Soupe VGE", price: 8 , preptime: 5, description:"truffes noires, pate feuillet??e, petit legume, bouillon de l??gumes")
soupe_vge.save!

#dishes murail

poulet_imp??rial = Dishe.create!(name: "Poulet_Imp??rial", price: 9  , preptime: 8, description:"poulet coup?? en d??s, piment s??ch?? et cacahu??tes")
poulet_imp??rial.save!

canard_laqu?? = Dishe.create!(name: "Canard Laqu?? de P??kin", price: 10, preptime: 8, description:"canard laqu?? servie avec ses cr??pes et de la sauce aux haricots sucr??s")
canard_laqu??.save!

boulettes = Dishe.create!(name: "Boulettes de porc brais??es en sauce", price: 6, preptime: 8, description:" boulettes de porc brais??es en sauce ??pic??e")
boulettes.save!

#dishes yoko

soupe_miso = Dishe.create!(name: "Soupe Miso" , price: 9, preptime: 5, description:"miso, champigon, poireaux, haricot mongo")
soupe_miso.save!

sushis = Dishe.create!(name: "Sushis" , price: 14, preptime: 12, description:"riz, vinaigre, saumon, thon")
sushis.save!

yakitoris = Dishe.create!(name: "Yakitoris" , price: 10, preptime: 8, description:"b??uf, champignons, poivrons, sauce soja")
yakitoris.save!

takoyakis = Dishe.create!(name: "Takoyakis" , price: 11, preptime: 13, description:"poulpe, ??pices, gingembre")
takoyakis.save!

gyozas = Dishe.create!(name: "Gyozas" , price: 8, preptime: 10, description:"boeuf, citronelle, coriander")
gyozas.save!

#dishes dream

am??ricain = Dishe.create!(name: "Am??ricain" , price: 12, preptime: 13, description:"bread, french fries, double grilled steak, BBQ sauce")
am??ricain.save!

cheese = Dishe.create!(name: "Cheese" , price: 12, preptime: 13, description:"spicy cheddar, grilled steak, ketchup")
cheese.save!

vegie = Dishe.create!(name: "Vegie" , price: 12, preptime: 13, description:"soja steack, colloslow salad, tartare sauce")
vegie.save!

#menu 

menu1 = Menu.create!(name:"plat + boisson", price: 11.30)
menu1.save!

menu2 = Menu.create!(name:"plat + boisson", price: 11.30)
menu2.save!

menu3 = Menu.create!(name:"plat + boisson", price: 11.30)
menu3.save!

menu4 = Menu.create!(name:"plat + boisson", price: 11.30)
menu4.save!

menu5 = Menu.create!(name:"plat + boisson", price: 11.30)
menu5.save!

menu6 = Menu.create!(name:"plat + boisson", price: 11.30)
menu6.save!


# restaurant

crocodillo = Restaurant.create!(full_name: "il Crocodillo", speciality: "Italian", address:"4 rue du g??n??ral Guillaudot, Rennes", phone_number:"0615784952", email:"crocodillo@test.fr", dishe: napolitaine, menu:menu1)
crocodillo.save!

el_caliente = Restaurant.create!(full_name: "el Caliente", speciality: "Mexican", address:" 25 Boulevard de Metz 35, 35700 Rennes", phone_number:"0645478952", email:"caliente@test.fr", dishe: tacos, menu: menu2)
el_caliente.save!

le_baguette = Restaurant.create!(full_name: "le Baguette", speciality: "French", address:"129 Rue de Foug??res, 35700 Rennes", phone_number:"061574574", email:"baguette@test.fr", dishe: soupe_vge, menu: menu3)
le_baguette.save!

the_murail = Restaurant.create!(full_name: "the Murail", speciality: "chinese", address:"Place de la R??publique, 35000 Rennes", phone_number:"0621854789", email:"murail@test.fr", dishe: poulet_imp??rial, menu: menu4)
the_murail.save!

yoko = Restaurant.create!(full_name: "Yoko", speciality: "japan", address:"27 Boulevard du Colombier, 35000 Rennes", phone_number:"0635487695", email:"yoko@test.fr", dishe: sushis, menu: menu5)
yoko.save!

the_a_dream = Restaurant.create!(full_name: "the A Dream", speciality: "American", address:"90 Rue de Ch??teaugiron, 35000 Rennes", phone_number:"0620147954", email:"theadream@test.fr", dishe: cheese, menu: menu6) 
the_a_dream.save!

