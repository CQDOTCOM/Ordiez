require 'faker'

FactoryBot.define do
  factory :meal do |f|
    f.name { Faker::Food.dish }
    f.description { Faker::Food.measurement }
  end
end
