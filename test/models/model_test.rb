require 'test_helper'

class ModelTest < ActiveSupport::TestCase
  
  test "should not save model without name" do
  	model = Model.new
  	assert_not model.save, "Don't save model without name 1"

  	model.brand_id = 12
		assert_not model.save, "Don't save model without name 2"
  end

  test "should not save model without brand_id" do
  	model = Model.new(name: "Q7")
  	assert_not model.save, "Don't save without brand_id"
  end
  
end
