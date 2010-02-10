require 'test_helper'

class ImageCopyrightsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_copyrights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_copyright" do
    assert_difference('ImageCopyright.count') do
      post :create, :image_copyright => { }
    end

    assert_redirected_to image_copyright_path(assigns(:image_copyright))
  end

  test "should show image_copyright" do
    get :show, :id => image_copyrights(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => image_copyrights(:one).to_param
    assert_response :success
  end

  test "should update image_copyright" do
    put :update, :id => image_copyrights(:one).to_param, :image_copyright => { }
    assert_redirected_to image_copyright_path(assigns(:image_copyright))
  end

  test "should destroy image_copyright" do
    assert_difference('ImageCopyright.count', -1) do
      delete :destroy, :id => image_copyrights(:one).to_param
    end

    assert_redirected_to image_copyrights_path
  end
end
