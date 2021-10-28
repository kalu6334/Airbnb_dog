# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
    city = City.create!(city_name:Faker::Address.city)
end

5.times do
    dogsitter = Dogsitter.create!(name:Faker::Name.name, city: City.all.sample)       
end 

50.times do 
    dog = Dog.create!(name:Faker::Name.name, city: City.all.sample) 
end 


3.times do 
    stroll = Stroll.create!(dogsitter:Dogsitter.all.sample, dog:Dog.all.sample,city:City.all.sample)
end
