class Car < ActiveRecord::Base
	belongs_to :city
	belongs_to :brand
	belongs_to :model
	belongs_to :color
	belongs_to :body

	has_many :car_images
	accepts_nested_attributes_for :car_images

	validates_presence_of :city_id, :model_id, :brand_id, :price, :transmission, :wheel, :year, :color_id, :body_id, :volume, :fuel, :milage, :state, :drive, :phone
end
