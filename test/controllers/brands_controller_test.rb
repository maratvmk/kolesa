require 'test_helper'

class BrandsControllerTest < ActionController::TestCase
  setup do
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials('maro', 'maro')
    @brand = brands(:one)
    @brand2 = brands(:two)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brand" do
    assert_difference('Brand.count') do
       post :create, brand: { name: @brand.name, symbol: @brand.symbol }
    end

    assert_redirected_to brand_path(assigns(:brand))
  end

  test "should show brand" do
    get :show, id: @brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brand
    assert_response :success
  end

  test "should update brand" do
    patch :update, id: @brand, brand: { name: @brand2.name, symbol: @brand2.symbol }
    assert_redirected_to brand_path(assigns(:brand))
  end

  test "should destroy brand" do
    assert_difference('Brand.count', -1) do
      delete :destroy, id: @brand
    end

    assert_redirected_to brands_path
  end
end
