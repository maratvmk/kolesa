require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save without email"  do
  	user = User.new
  	assert_not user.save
  end
end
