require 'faker'

puts "Reset users, stores and managers..."

Store.destroy_all
Manager.destroy_all
User.destroy_all
Vehicule.destroy_all
Appointment.destroy_all

puts "Creating our vehicules..."

blanche = Vehicule.create!(brand: "Reno", model: "Lagune", license_plate: "BY123FE", fuel_type: "GPL", engine_size: 2000, year: 2009)
rouge = Vehicule.create!(brand: "Reno", model: "Lagune", license_plate: "BY123FE", fuel_type: "Diesel", engine_size: 1800, year: 2009)
noire = Vehicule.create!(brand: "Reno", model: "Lagune", license_plate: "BY123FE", fuel_type: "Essence", engine_size: 2200, year: 2019)
char = Vehicule.create!(brand: "Fiatch", model: "Dois", license_plate: "BY456FE", fuel_type: "Electrique", engine_size: 0000, year: 2020)

vehicules = [blanche, rouge, noire, char]

puts "Creating our users..."

fred = User.create!(email: 'fred@fred.com', password: 'password', first_name: "Frederic", last_name: "Vergara", address: "Marseille")
sleep(1)
frederique = User.create!(email: 'frederique@frederique.com', password: 'password', first_name: "frederique", last_name: "Blanc", address: "Carcassonne")
sleep(1)
fernanda = User.create!(email: 'fe@fe.com', password: 'password', first_name: "Fernanda", last_name: "Blanc-Abreu", address: "Aix en Provence")
sleep(1)
patrick = User.create!(email: 'patrick@patrick.com', password: 'password', first_name: "Patrick", last_name: "Blanc", address: "Marseille")
sleep(1)

users = [fred, frederique, fernanda, patrick]
group = ["Lareine Marlène", "Castochama", "Auchian", "Ikeo", "FlyLikeABird", "Bricoranma 1/2"]

puts "Creating our managers..."

jeanjacques = Manager.create!(first_name: 'Jean-Jacques', last_name: "Hommedor", phone: "0612345678")
jeanrodolphe = Manager.create!(first_name: 'Jean-Rodolphe', last_name: "De Mescouilles" ,phone: "0612345678")
robert = Manager.create!(first_name: 'Robert', last_name: "Johnsonovik", phone: "0612345678")
jeanmouloud = Manager.create!(first_name: 'Jean-Mouloud', last_name: "Ouechkouzin", phone: "0612345678")

managers = [jeanjacques, jeanrodolphe, robert, jeanmouloud]

puts "Creating our stores..."

60.times do |i|
  user = users.sample
  store = Store.new(
    name: Faker::Commerce.product_name,
    group: group.sample,
    address: Faker::Address.full_address,
    manager: managers.sample,
    deputy_manager: managers.sample,
    user: user
  )
  store.save
end

puts "Done !"
