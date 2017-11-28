class OrdersController < ApplicationController
  def index
    @all_deliveries = DeliveryOrder.all
    render json: { "orders" => @all_deliveries.as_json(root: true) }.to_json
  end

  def show
    @particular_delivery = DeliveryOrder.find_by_order_id(params[:order_id])
    render json: { "orders" => @particular_delivery.as_json(root: true) }.to_json
  end

  def feedback
    @feedback_for_delivery = DeliveryOrder.find_by_order_id(params[:order_id]).id
    @feedback_for_both = OrderItem.where(delivery_order_id: @feedback_for_delivery).pluck(:id).push(@feedback_for_delivery)
    @all_feedback_for_this_id = Feedback.where("ratable_id IN (?)" , @feedback_for_both)
    render json: { "feedbacks" => @all_feedback_for_this_id.as_json(root: true) }.to_json
  end

end
