class City < ActiveRecord::Base
	has_many :cars
	has_many :users

	validates_presence_of :name
end
