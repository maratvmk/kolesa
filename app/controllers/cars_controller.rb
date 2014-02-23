class CarsController < ApplicationController
  def index
  end

  def new
  	@car = Car.new
  end

  def create
  	@car = Car.new(car_params)
  	@car.save
  	redirect_to cars_path
  end

  private
  def car_params
  	params.require(:car).permit(:city_id, :brand_id, :price, :transmission, :wheel, :year, :car_images_id)
  end

end
