class CarImage < ActiveRecord::Base
	belongs_to :car
	
	mount_uploader :image, ImageUploader
	validates_presence_of :image
end
