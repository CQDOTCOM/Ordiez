# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meal.destroy_all
DeliveryOrder.destroy_all
OrderItem.destroy_all
Feedback.destroy_all



10.times do
  Meal.create(
    name: Faker::Food.dish,
    description: Faker::Food.ingredient
  )
end


5.times do
  DeliveryOrder.create(
    order_id: 'GO12' + Meal.all.sample.id.to_s,
    serving_datetime: Faker::Time.between(Date.today, Date.today + 5, :all)
  )
end

10.times do
  OrderItem.create(
    delivery_order_id: DeliveryOrder.all.sample.id,
    meal_id: Meal.all.sample.id,
    quantity: [*1..10].sample,
    unit_price: [*10..300].sample
  )
end

3.times do
  Feedback.create(
    ratable_type: DeliveryOrder,
    ratable_id: DeliveryOrder.all.sample.id,
    rating: -1,
    comment: "Food is too salty"
  )
end

2.times do
  Feedback.create(
    ratable_type: OrderItem,
    ratable_id: OrderItem.all.sample.id,
    rating: -1,
    comment: "Food is too little"
  )
end
