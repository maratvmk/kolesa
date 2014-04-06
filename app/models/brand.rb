class Brand < ActiveRecord::Base
	has_many :models
	has_many :cars
	
	mount_uploader :symbol, SymbolUploader
	validates :name, presence: true
end
