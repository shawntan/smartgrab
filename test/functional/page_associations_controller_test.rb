require 'test_helper'

class PageAssociationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_association" do
    assert_difference('PageAssociation.count') do
      post :create, :page_association => { }
    end

    assert_redirected_to page_association_path(assigns(:page_association))
  end

  test "should show page_association" do
    get :show, :id => page_associations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => page_associations(:one).to_param
    assert_response :success
  end

  test "should update page_association" do
    put :update, :id => page_associations(:one).to_param, :page_association => { }
    assert_redirected_to page_association_path(assigns(:page_association))
  end

  test "should destroy page_association" do
    assert_difference('PageAssociation.count', -1) do
      delete :destroy, :id => page_associations(:one).to_param
    end

    assert_redirected_to page_associations_path
  end
end
