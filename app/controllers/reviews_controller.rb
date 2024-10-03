class ReviewsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @review = Review.new(params.require(:review).permit(:comment, :rating))
    @review.car = @car
    if @review.save
      redirect_to car_path(@car), status: :see_other
    else
      render :show, status: :unprocessible_entity
    end
  end
end
