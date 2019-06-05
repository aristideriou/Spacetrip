class ShipsController < ApplicationController

  def index
    if params[:query].present?
      @ships = Ship.where(location: params[:query])
      @markers = @ships.map do |ship|
        {
          lat: ship.latitude,
          lng: ship.longitude,
        }
    else
      @ships = Ship.all
      @markers = @ships.map do |ship|
        {
          lat: ship.latitude,
          lng: ship.longitude,
        }

    end
  end

  def show
    @ship = Ship.find(params[:id])
  end

end
