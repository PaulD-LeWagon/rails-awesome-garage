class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    @fav = Favourite.new(car: @car)
    if @fav.save
      redirect_to favourites_path, status: :see_other
    else
      render "cars/show", status: :unprocessible_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, status: :see_other
  end
end
