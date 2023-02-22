class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(param_set)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def param_set
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)

  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
