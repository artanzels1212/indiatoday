require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  setup do
    @state = states(:one)
    @city = cities(:one)
  end

  test "should get index" do
    get :index, params: { state_id: @state }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { state_id: @state }
    assert_response :success
  end

  test "should create city" do
    assert_difference('City.count') do
      post :create, params: { state_id: @state, city: @city.attributes }
    end

    assert_redirected_to state_city_path(@state, City.last)
  end

  test "should show city" do
    get :show, params: { state_id: @state, id: @city }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { state_id: @state, id: @city }
    assert_response :success
  end

  test "should update city" do
    put :update, params: { state_id: @state, id: @city, city: @city.attributes }
    assert_redirected_to state_city_path(@state, City.last)
  end

  test "should destroy city" do
    assert_difference('City.count', -1) do
      delete :destroy, params: { state_id: @state, id: @city }
    end

    assert_redirected_to state_cities_path(@state)
  end
end
