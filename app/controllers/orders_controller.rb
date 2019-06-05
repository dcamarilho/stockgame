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
      flash[:notice] = "Congratulations! #{@order.quantity.abs} #{@order.stock.name} #{@order.quantity.negative? ? 'removed from' : 'added to' } your wallet."

      redirect_to dashboard_wallet_path
    else
      # Caso ela nao seja salva, retorna para a pagina anterior com uma mensagem de erro
      flash[:notice] = 'Something wrong happened.'
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
