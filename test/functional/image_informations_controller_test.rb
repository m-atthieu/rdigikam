require 'test_helper'

class ImageInformationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_information" do
    assert_difference('ImageInformation.count') do
      post :create, :image_information => { }
    end

    assert_redirected_to image_information_path(assigns(:image_information))
  end

  test "should show image_information" do
    get :show, :id => image_informations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => image_informations(:one).to_param
    assert_response :success
  end

  test "should update image_information" do
    put :update, :id => image_informations(:one).to_param, :image_information => { }
    assert_redirected_to image_information_path(assigns(:image_information))
  end

  test "should destroy image_information" do
    assert_difference('ImageInformation.count', -1) do
      delete :destroy, :id => image_informations(:one).to_param
    end

    assert_redirected_to image_informations_path
  end
end
