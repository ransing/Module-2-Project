# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Model.destroy_all
Designer.destroy_all



User.create(username: "molly", password_digest: "12345", gender: "female", age: 25)
User.create(username: "bobik", password_digest: "1425", gender: "male", age: 30)
User.create(username: "scorpion", password_digest: "3425",gender:  "male", age: 34)
User.create(username: "eagle", password_digest: "2019", gender: "female", age: 19)
User.create(username: "benny", password_digest: "7217", gender: "female", age: 28)

20.times do |time|
    model = Model.create(name: Faker::Name.name, age: rand(100))

end

20.times do |time|
    designer = Designer.create(name: Faker::Name.name,  city: Faker::Address.city)
end 

Event.create(user_id: User.first.id, designer_id: Designer.second.id, location: "Brooklyn", date: Date.tomorrow, name: "Gala")
Event.create(user_id: User.second.id, designer_id: Designer.third.id, location: "Bronx", date: Date.yesterday, name: "Party")
Event.create(user_id: User.third.id, designer_id: Designer.first.id, location: "Queens", date: Date.today, name: "NewYear")

 


puts "It has been seeded! 🧲"
