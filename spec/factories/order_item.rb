require 'faker'

FactoryBot.define do
  factory :order_item do |f|
    delivery_order_id 2
    meal
    f.quantity { Faker::Number.number(2) }
    f.unit_price { Faker::Number.number(2) }
  end
end
