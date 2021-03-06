class OrderItem < ApplicationRecord
  validates :delivery_order_id, :meal_id, :quantity, :unit_price, presence: true
  belongs_to :meal
  has_many :feedbacks, as: :ratable


  def total_price
    total = self.quantity * unit_price
  end

  def name
    self.meal.name
  end

end
