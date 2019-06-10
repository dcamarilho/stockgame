class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update]

  def index
    if params[:query].present?
      @stocks = Stock.search_by_stock_name(params[:query])
    else
      @stocks = Stock.all
    end
  end

  def show
    @order = Order.new

  end

  def create
    @stock = Stock.new(stock_params)
    @stock.user = current_user
  end

  def edit
  end

  def update
    if @stock.update(stock_params)
      redirect_to @stock, notice: 'Stock was successfully updated.'
    else
      render :edit
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:price, :name)
  end

  def set_stock
    @stock = Stock.find(params[:id])
  end
end
