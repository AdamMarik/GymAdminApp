class ItemStocksController < ApplicationController
  def index
    @item_stocks = ItemStock.all
    @item_stock = ItemStock.new
  end

  def create
    @item_stock = ItemStock.new(item_stock_params)
    if @item_stock.save
      redirect_to item_stocks_path, notice: 'Item stock was successfully created.'
    else
      render :index
    end
  end

  def edit
    @item_stock = ItemStock.find(params[:id]) # Find the item to edit
  end

  def update
    @item_stock = ItemStock.find(params[:id])
    if @item_stock.update(item_stock_params)
      redirect_to item_stocks_path, notice: 'Item stock was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item_stock = ItemStock.find(params[:id])
    @item_stock.destroy
    redirect_to item_stocks_path, notice: 'Item stock was successfully deleted.'
  end

  private

  def item_stock_params
    params.require(:item_stock).permit(:name, :quantity)
  end
end
