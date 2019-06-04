class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    @stock = Stock.find(params[:stock_id])
    @order.user = current_user
    @order.stock = @stock

    if @order.save
      # @flat.availability = false
      # @flat.save
      # redirect_to @order, notice: 'Flat was successfully updated.'
    else
      redirect_to @stock, alert: 'Error creating order'
    end
  end

  def show
    @order = Order.find(params[:id])
  end
end
