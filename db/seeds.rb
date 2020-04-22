require 'faker'

puts "Reset users, stores and managers..."
Store.destroy_all
Manager.destroy_all
User.destroy_all
Vehicule.destroy_all

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
group = ["Leroy Merlin", "Castochama", "Auchian", "Ikeo", "FlyLikeABird", "Bricoranma"]

puts "Creating our managers..."

jeanjacques = Manager.create!(name: 'Jean-Jacques', phone: "0612345678")
jeanrodolphe = Manager.create!(name: 'Jean-Rodolphe', phone: "0612345678")
robert = Manager.create!(name: 'Robert', phone: "0612345678")
jeanmouloud = Manager.create!(name: 'Jean-Mouloud', phone: "0612345678")

manager = [jeanjacques, jeanrodolphe, robert, jeanmouloud]

puts "Creating our stores..."

60.times do |i|
  user = user.sample
  store = Store.new(
    name: Faker::Commerce.product_name,
    group: group.sample,
    address: Faker::Address.full_address,
    manager: manager.sample,
    deputy_manager: manager.sample,
    purchase_date: Faker::Date.between(from: 3.years.ago, to: 2.years.ago),
    discard_date: Faker::Date.between(from: 2.years.ago, to: Date.today)
  )
  product.save
end

puts "Done !"
