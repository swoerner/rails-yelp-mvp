class ReviewsController < ApplicationController

def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    # @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)
    # @review.save
    #Damit sorge ich dafuer, dass wenn ich speichere auch weitergeleitet werden
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end


end
