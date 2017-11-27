require 'rails_helper'

RSpec.describe Meal, type: :model do

  it "has a valid factory" do
    expect(FactoryBot.create(:meal)).to be_valid
  end
  it "is not valid without a name" do
    expect(FactoryBot.build(:meal, name: nil)).to be_invalid
  end
  it "is not valid without a description" do
    expect(FactoryBot.build(:meal, description: nil)).to be_invalid
  end

  context 'validations' do
    it do
      should validate_presence_of(:name)
      should validate_presence_of(:description)
    end
  end

  context 'associations' do
    it do
      should have_many(:order_items)
    end
  end

end
