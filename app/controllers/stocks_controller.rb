class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update]

  def index
    @stocks = Stock.all
  end

  def show
    @stocks = Stock.all
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
    @stock = stock.find(params[:id])
  end
end
