require 'faker'

FactoryBot.define do
  factory :delivery_order do |f|
    order_id 'GO123'
    f.serving_datetime { Faker::Time.between(Date.today, Date.today + 5, :all) }
  end
end
