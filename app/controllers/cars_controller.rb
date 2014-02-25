class CarsController < ApplicationController
  def index
  	@search = Car.search(params[:q])
  	@cars = @search.result
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
  	if params[:car][:car_images_attributes]
	  	tmp = []
		params[:car][:car_images_attributes]['0'][:image].each do |f|
	  		tmp << { image: f }
		end
		params[:car][:car_images_attributes] = tmp
	end

	@car = Car.new(car_params)
  	if params[:car][:car_images_attributes]
  		if @car.save
  			redirect_to @car, success: 'ваше объявление успешно добавлен =)'
		else
			render 'new'
		end
  	else
  		flash[:error] = 'Пожалуйста добавьте фотки вашего авто и заполните поля с *:'	
  		render 'new'
  	end
  	
  end

  def show
  	@car = Car.find(params[:id])
  end

  # ajax 
  def models
  	@models = Model.where(brand_id: params[:brand_id])
  	@tag = params[:span]
  	render layout: false
  end

  private
  def car_params
  	params.require(:car).permit(:id, :city_id, :brand_id, :model_id, :price, :transmission, :wheel, :year, 
  		:fuel, :color_id, :body_id, :milage, :volume, :drive, :phone, :description, :state, :customs,
  		car_images_attributes: [:id, :car_id, :image, :_destroy] )
  end

end
