# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |contact|
    
    Contact.create(
        name: Faker::Name.unique.name,
        age: Faker::Number.between(18, 100),
        hair_color: Faker::Color.color_name, 
        eye_color: Faker::Color.color_name, 
        gender: ["female", "male"].sample,
        alive: Faker::Boolean.boolean 
    )    
end 

puts "Seeded"