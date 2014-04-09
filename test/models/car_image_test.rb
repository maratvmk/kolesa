require 'test_helper'

class CarImageTest < ActiveSupport::TestCase

  test "should not save car_img without image" do
  	car_img = CarImage.new(car_id: 2)
  	assert_not car_img.save
  end

end
