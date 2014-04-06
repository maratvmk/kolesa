require 'test_helper'

class BodyTest < ActiveSupport::TestCase
  
  test "should not save body without name" do
  	body = Body.new
  	assert_not body.save, "save body without name"
  end

  test "should save body with name" do
  	body = Body.new(name: "Hachback")
  	assert body.save
  end

end
