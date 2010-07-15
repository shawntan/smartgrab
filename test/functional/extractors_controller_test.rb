require 'test_helper'

class ExtractorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extractors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extractor" do
    assert_difference('Extractor.count') do
      post :create, :extractor => { }
    end

    assert_redirected_to extractor_path(assigns(:extractor))
  end

  test "should show extractor" do
    get :show, :id => extractors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => extractors(:one).to_param
    assert_response :success
  end

  test "should update extractor" do
    put :update, :id => extractors(:one).to_param, :extractor => { }
    assert_redirected_to extractor_path(assigns(:extractor))
  end

  test "should destroy extractor" do
    assert_difference('Extractor.count', -1) do
      delete :destroy, :id => extractors(:one).to_param
    end

    assert_redirected_to extractors_path
  end
end
