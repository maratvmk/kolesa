class CarsController < ApplicationController
  def index
  end

  def new
  	if current_user 
  		@car = Car.new
  	else
  		redirect_to cars_path, notice: 'Чтобы продать авто войдите в систему'
  	end
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

  def show
  	@car = Car.find(params[:id])
  end

  # ajax 
  def models
  	@models = Model.where(brand_id: params[:brand_id])
  	render layout: false
  end

  private
  def car_params
  	params.require(:car).permit(:id, :city_id, :brand_id, :price, :transmission, :wheel, :year, 
  		car_images_attributes: [:id, :car_id, :image, :_destroy] )
  end

end
