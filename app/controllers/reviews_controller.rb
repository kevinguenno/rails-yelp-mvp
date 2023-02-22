class ReviewsController < ApplicationController

  before_action :restaurant_set, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_set)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def params_set
    params.require(:review).permit(:rating, :content)
  end

  def restaurant_set
    @restaurant = Restaurant.find(params[:id])
  end
end
