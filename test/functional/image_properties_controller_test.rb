require 'test_helper'

class ImagePropertiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_property" do
    assert_difference('ImageProperty.count') do
      post :create, :image_property => { }
    end

    assert_redirected_to image_property_path(assigns(:image_property))
  end

  test "should show image_property" do
    get :show, :id => image_properties(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => image_properties(:one).to_param
    assert_response :success
  end

  test "should update image_property" do
    put :update, :id => image_properties(:one).to_param, :image_property => { }
    assert_redirected_to image_property_path(assigns(:image_property))
  end

  test "should destroy image_property" do
    assert_difference('ImageProperty.count', -1) do
      delete :destroy, :id => image_properties(:one).to_param
    end

    assert_redirected_to image_properties_path
  end
end
