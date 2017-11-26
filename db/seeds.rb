# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meal.destroy_all
OrderItem.destroy_all


Meal.create!([{
  name: "Feeesh ‘n Cheeese",
  description: "Enjoy your Manhattan Fish n Chips with marvellous cheesy chips with choice of fish variety are the same as Manhattan Fish n chips"
},
{
  name: "Fishy Chicky Bang Bang",
  description: "It's a match made in cheddar cheese heaven with dory fillet on one side and chicken fillet on the other with a sunny side up, nestled on a crispy tortilla"
},
{
  name: "Manhattan Fish ‘n Chips",
  description: "Hand-battered fish fillets, drizzled with delicious garlic herb sauce, complemented with chips and a side salad"
},
{
  name: "Small Flame",
  description: "Manhattan flaming prawns with grilled dory fillet on a bed of garlic herb rice, chips and hot veggies"
},
{
  name: "Fried Country Mushrooms",
  description: "Button mushrooms served with a home-made Cajun Honey Mustard sauce"
},
{
  name: "Grilled Glory Dory",
  description: "Good old dory with a fragrant garlic herb sauce"
},
{
  name: "Mediterranean Baked Fish",
  description: "Salmon or dory fillet baked in an aromatic blend of herbs and spices, served with garlic herb rice and hot veggies"
},
{
  name: "Scallops Fish Chicken (SFC)",
  description: "Enjoy a serving of finely grilled chicken, crispy fish fingers and fried scallops, served with a helping of our garlic herb rice, chips and hot veggies"
},
{
  name: "Mesclun Salad",
  description: "A bounty of fresh produce topped with roasted sunflower seeds and cranberries for an extra boost of antioxidants, with your choice of Cajun honey mustard or house dressing"
},
{
  name: "Caesar Salad",
  description: "Lush romaine lettuce, eggs and home-made croutons, dressed with Parmesan cheese and drizzled with a home-made Caesar dressing for more oomph"
}])

OrderItem.create([{
  meal: Meal.first,
  quantity: 3,
  unit_price: 30
},
{
  meal: Meal.last,
  quantity: 2,
  unit_price: 40
}])
