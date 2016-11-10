# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all


Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Moscow mole")
Cocktail.create(name: "Mojito")


require 'json'
require 'open-uri'

Ingredient.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
request = JSON.parse(user_serialized)


request = request["drinks"]

request.each do |key|
  ingredient = Ingredient.new(name: key["strIngredient1"])
  ingredient.save
end
