require 'test_helper'

class TumbnailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tumbnails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tumbnail" do
    assert_difference('Tumbnail.count') do
      post :create, :tumbnail => { }
    end

    assert_redirected_to tumbnail_path(assigns(:tumbnail))
  end

  test "should show tumbnail" do
    get :show, :id => tumbnails(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tumbnails(:one).to_param
    assert_response :success
  end

  test "should update tumbnail" do
    put :update, :id => tumbnails(:one).to_param, :tumbnail => { }
    assert_redirected_to tumbnail_path(assigns(:tumbnail))
  end

  test "should destroy tumbnail" do
    assert_difference('Tumbnail.count', -1) do
      delete :destroy, :id => tumbnails(:one).to_param
    end

    assert_redirected_to tumbnails_path
  end
end
