class RestaurantsController < ApplicationController

def index
  @restaurants = Restaurant.all
end

def show
  @restaurant = Restaurant.find(params[:id])
end

def create
Restaurant.create(restaurant_params)
redirect_to restaurants_path(@restaurant)
end

def new
@restaurant = Restaurant.new
end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category, :phone_number)
end

end
