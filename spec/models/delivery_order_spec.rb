require 'rails_helper'

RSpec.describe DeliveryOrder, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "has a valid factory" do
    expect(FactoryBot.create(:delivery_order)).to be_valid
  end

  context 'validations' do
    it do
      should validate_presence_of(:order_id)
      should validate_presence_of(:serving_datetime)
    end
  end

  context 'associations' do
    it do
      should have_many(:order_items)
    end
  end
end
