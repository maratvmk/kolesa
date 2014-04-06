class Color < ActiveRecord::Base
	has_many :cars

	validates_presence_of :name
end
