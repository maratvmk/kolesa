class CarsController < ApplicationController
  def index
  end

  def new
  	@car = Car.new
  end

  def create
  	# little hack to save multiple images with nested_attrs
  	tmp = []
	params[:car][:car_images_attributes]['0'][:image].each do |f|
  		tmp << { image: f }
	end
	params[:car][:car_images_attributes] = tmp

	@car = Car.new(car_params)
  	@car.save
  	redirect_to cars_path
  end

  private
  def car_params
  	params.require(:car).permit(:id, :city_id, :brand_id, :price, :transmission, :wheel, :year, car_images_attributes: [:id, :car_id, :image, :_destroy] )
  end

end
