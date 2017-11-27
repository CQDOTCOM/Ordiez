class OrdersController < ApplicationController
  def index
    @all_deliveries = DeliveryOrder.all
    render json: { "orders" => @all_deliveries.as_json(root: true) }.to_json
  end

  def show
    @particular_delivery = DeliveryOrder.find_by_order_id(params[:order_id])
    render json: { "orders" => @particular_delivery.as_json(root: true) }.to_json
  end


end
