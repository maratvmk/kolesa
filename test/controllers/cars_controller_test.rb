require 'test_helper'

class CarsControllerTest < ActionController::TestCase
	setup do
		#@car = cars(:one)
	end

  test "should get index" do
    get :index
    assert_template layout: "layouts/application"
    assert_response :success
  end

end
