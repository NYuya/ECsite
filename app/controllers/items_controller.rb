class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @tax = @item.price.to_i*1.1
  end

  def top
  end
end
