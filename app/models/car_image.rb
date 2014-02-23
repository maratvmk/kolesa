class CarImage < ActiveRecord::Base
	belongs_to :car
	
	mount_uploader :image, ImageUploader
end
