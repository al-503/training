class RestaurantsController < ApplicationController
  
  def index 
    @restaurants = Restaurant.all
  end

  def show 
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
  params.require(:restaurant).permit(:photo)
  end

end
