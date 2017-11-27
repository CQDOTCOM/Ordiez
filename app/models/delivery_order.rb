class DeliveryOrder < ApplicationRecord
  validates :order_id, :serving_datetime, presence: true
  has_many :order_items

    def as_json(options={})
    super(:only => [:order_id],
          :methods => [:delivery_date, :delivery_time],
          :include => {
            :order_items => {
            :only => [],
            :methods => [:name, :quantity, :total_price]
            }
          }
    )
  end

  def delivery_date
    self.serving_datetime.to_s.split(" ").first
  end

  def delivery_time
     range1 = self.serving_datetime.strftime('%a, %d %b %Y %I:%M %p').to_s[17..21] + "-"
     range2 = self.serving_datetime.to_time + 30.minutes
     range2 = range2.strftime('%I:%M:%S %p').to_s
     range3 = range1 + range2
  end

end
