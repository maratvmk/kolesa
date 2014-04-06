require 'test_helper'

class CityTest < ActiveSupport::TestCase
  
  test "should not save city without name" do
  	city = City.new
  	assert_not city.save, "save city without name"
  end

  test "should save city with name" do
  	city = City.new(name: "Astana")
  	assert city.save
  end

end
