require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:order_item)).to be_valid
  end

  context 'validations' do
    it do
      should validate_presence_of(:delivery_order_id)
      should validate_presence_of(:meal_id)
      should validate_presence_of(:quantity)
      should validate_presence_of(:unit_price)
    end
  end

  context 'associations' do
    it do
      should belong_to(:meal)
    end
  end

end
