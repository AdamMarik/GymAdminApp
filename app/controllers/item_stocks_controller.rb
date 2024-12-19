class ItemStocksController < ApplicationController
    def index
      @item_stocks = ItemStock.all
    end
  
    def create
      @item_stock = ItemStock.new(item_stock_params)
      if @item_stock.save
        redirect_to item_stocks_path, notice: 'Item stock was successfully updated.'
      else
        render :index
      end
    end
  
    private
  
    def item_stock_params
      params.require(:item_stock).permit(:item_name, :quantity)
    end
  end
  