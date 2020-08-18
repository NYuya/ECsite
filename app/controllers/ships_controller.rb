class ShipsController < ApplicationController
  def index
    @ships = Ship.all
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(ship_params)
    @ship.customer_id = current_customer.id
    if @ship.save
      redirect_to ships_path
    else
      @ships = Ship.all
      render :index
    end
  end

  def edit
    @ship = Ship.find(params[:id])
  end

  def update
    @ship = Ship.find(params[:id])
     if @ship.update(ship_params)
      redirect_to ships_path
    else
      render :edit
    end
  end

  def destroy
    ship = Ship.find(params[:id])
    ship.destroy
    redirect_to ships_path
  end

  private
  def ship_params
    params.require(:ship).permit(:customer_id, :address, :name, :code)
  end
end
