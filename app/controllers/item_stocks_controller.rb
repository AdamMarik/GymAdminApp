class ItemStocksController < ApplicationController
  def index
    @item_stocks = ItemStock.all
    @item_stock = ItemStock.new # Important: Initialize @item_stock for the form
  end

  def create
    @item_stock = ItemStock.new(item_stock_params)
    if @item_stock.save
      redirect_to item_stocks_path, notice: 'Item stock was successfully created.'
    else
      render :index # Render the index view, which includes the form
    end
  end

  private

  def item_stock_params
    params.require(:item_stock).permit(:name, :quantity)
  end
end