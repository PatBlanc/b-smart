require 'faker'

puts "Reset users, stores and managers..."

Store.destroy_all
Manager.destroy_all
User.destroy_all
Vehicule.destroy_all
Appointment.destroy_all

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

puts "Creating our managers..."

jeanjacques = Manager.create!(first_name: 'Jean-Jacques', last_name: "Hommedor", phone: "0612345678")
sleep(1)
jeanrodolphe = Manager.create!(first_name: 'Jean-Rodolphe', last_name: "De Mescouilles", phone: "0612345678")
sleep(1)
robert = Manager.create!(first_name: 'Robert', last_name: "Johnsonovik", phone: "0612345678")
sleep(1)
jeanmouloud = Manager.create!(first_name: 'Jean-Mouloud', last_name: "Ouechkouzin", phone: "0612345678")
sleep(1)
managers = [jeanjacques, jeanrodolphe, robert, jeanmouloud]

puts "Creating our vehicules..."

blanche = Vehicule.create!(brand: "Reno", model: "Lagune", license_plate: "BY123FE", fuel_type: "GPL", user: users.sample, year: rand(2009..2020))
sleep(1)
rouge = Vehicule.create!(brand: "Reno", model: "Lagune", license_plate: "BY123FE", fuel_type: "Diesel", user: users.sample, year: rand(2009..2020))
sleep(1)
noire = Vehicule.create!(brand: "Reno", model: "Lagune", license_plate: "BY123FE", fuel_type: "Essence", user: users.sample, year: rand(2009..2020))
sleep(1)
char = Vehicule.create!(brand: "Fiatch", model: "Dois", license_plate: "BY456FE", fuel_type: "Electrique", user: users.sample, year: rand(2009..2020))
sleep(1)

puts "Creating our stores..."

groups = ["Lareine Marlène", "Castochama", "Auchian", "Ikeo", "FlyLikeABird", "Bricoranma 1/2"]

60.times do |i|
  users.each { |user| user.stores.create!(name: Faker::Commerce.product_name,
    group: groups.sample,
    address: Faker::Address.full_address,
    manager: managers.sample) }

  # store = Store.new(

  # )
  store.save
end

puts "Done !"
