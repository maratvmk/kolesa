require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test "should not save car without city_id" do
  	car = Car.new
  	assert_not car.save
	end
end
