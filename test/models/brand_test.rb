require 'test_helper'

class BrandTest < ActiveSupport::TestCase

  test "should not save brand without name" do
  	brand = Brand.new
  	assert !brand.save, "Saved the brand without name"
  end

  test "should save brand with name" do
  	brand = Brand.new(name: "BMW")
  	assert brand.save, "Saved the brand with name"
  end

end
