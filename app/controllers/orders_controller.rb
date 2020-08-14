class OrdersController < ApplicationController
  def index
    @orders = current_customer.orders.all
  end

  def new
    @order_new = Order.new
    @my_cart = current_customer.cart_items
    if @my_cart.empty?
      redirect_to request.referer, notice:'カートが空の状態では注文出来ません'
    end
  end

  def show
    @order = Order.find(params[:id])
    @order_item = @order.order_items
  end

  def create
    @order_new = Order.new(order_params)
    @order.customer_id = current_customer.id
  end

  def confirm
  end

  def thanks
  end

  private
  def order_item_params
    params.require(:order_item).permit(:item_id, :order_id, :product_status, :price, :quantity, :name)
  end

  def order_params
    params.require(:order).permit(:customer_id, :pay_method, :status, :freight, :total, :ship_name, :ship_postcode, :ship_address)
  end
end
