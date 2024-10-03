class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    @fav = @car.favourite.nil? ? Favourite.new : @car.favourite
  end
end
