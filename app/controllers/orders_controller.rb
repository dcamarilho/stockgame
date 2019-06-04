class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @stock = Stock.find(params[:stock_id])
    @order.user = current_user
    @order.stock = @stock
    @order.price = @stock.price

    if @order.save
      redirect_to dashboard_path, notice: 'Order was successfully created.'
    else
      render 'stocks/show'
    end

  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end
end
