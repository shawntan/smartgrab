require 'test_helper'

class ScrapedValuesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scraped_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scraped_value" do
    assert_difference('ScrapedValue.count') do
      post :create, :scraped_value => { }
    end

    assert_redirected_to scraped_value_path(assigns(:scraped_value))
  end

  test "should show scraped_value" do
    get :show, :id => scraped_values(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => scraped_values(:one).to_param
    assert_response :success
  end

  test "should update scraped_value" do
    put :update, :id => scraped_values(:one).to_param, :scraped_value => { }
    assert_redirected_to scraped_value_path(assigns(:scraped_value))
  end

  test "should destroy scraped_value" do
    assert_difference('ScrapedValue.count', -1) do
      delete :destroy, :id => scraped_values(:one).to_param
    end

    assert_redirected_to scraped_values_path
  end
end
