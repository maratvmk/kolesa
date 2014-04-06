require 'test_helper'

class ColorTest < ActiveSupport::TestCase
  
  test "should not save color without name" do
  	color = Color.new
  	assert_not color.save, "save color without name"
  end

  test "should save color with name" do
  	color = Color.new(name: "Yellow")
  	assert color.save
  end

end
