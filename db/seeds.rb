# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
  Product.destroy_all
  Ingredient.destroy_all

  ['Chicken', 'Tofu', 'Salmon', 'Tuna'].each do |ingredient|
    Ingredient.create(name: ingredient, price: 25 + rand(10), available: true)
  end

  ['Bibimbap', 'Funchöza', 'Hoe-deopbap', 'kimchi-jjigae', 'Korean tacos'].each do |dish|
    prod = Product.create(name: dish,
                             price: 89,
                             description: 'Bibimbap, sometimes anglicized as bi bim bap or bi bim bop, is a Korean dish. The word literally means "mixed rice". Bibimbap is served as a bowl of warm white rice topped with namul and gochujang, soy sauce, or doenjang. Pulled beef, kimchi, egg, spinach, and protein of your choice.',
                             image: 'http://img.taste.com.au/89rfrNZj/w720-h480-cfill-q80/taste/2016/11/bibimbap-92850-1.jpeg',
                             of_type: 'dish',
                             available: true)
    prod.ingredients.push Ingredient.all
  end

  ['Herb Salad', 'Caesar Salad', 'Panzanella', 'Tricolor Salad', 'Yellow Trio'].each do |salad|
    Product.create(name: salad,
                   price: 55 + rand(20),
                   description: 'Green salad',
                   available: true,
                   of_type: 'salad',
                   image: 'https://goo.gl/images/HDFTq4')
  end

  ['Coca-Cola', 'Fanta', 'Pepsi', 'Loka', 'Green te', 'Black te', 'Mint te', 'Ginger beer', 'Juice', 'Saft'].each do |drink|
    Product.create(name: drink,
                   price: 10 + rand(10),
                   available: true,
                   of_type: 'drink',
                   description: 'Beverage',
                   image: 'https://goo.gl/images/Uh6t7A')
  end
end