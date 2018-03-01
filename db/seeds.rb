require 'open-uri'
p "Seeding"
data = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)["drinks"]
data.each do |d|
 Ingredient.create!(name: d["strIngredient1"])
end
p "Se finií"
