require 'test_helper'

class ImagePositionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_position" do
    assert_difference('ImagePosition.count') do
      post :create, :image_position => { }
    end

    assert_redirected_to image_position_path(assigns(:image_position))
  end

  test "should show image_position" do
    get :show, :id => image_positions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => image_positions(:one).to_param
    assert_response :success
  end

  test "should update image_position" do
    put :update, :id => image_positions(:one).to_param, :image_position => { }
    assert_redirected_to image_position_path(assigns(:image_position))
  end

  test "should destroy image_position" do
    assert_difference('ImagePosition.count', -1) do
      delete :destroy, :id => image_positions(:one).to_param
    end

    assert_redirected_to image_positions_path
  end
end
