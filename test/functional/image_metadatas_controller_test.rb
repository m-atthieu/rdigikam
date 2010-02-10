require 'test_helper'

class ImageMetadatasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_metadatas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_metadata" do
    assert_difference('ImageMetadata.count') do
      post :create, :image_metadata => { }
    end

    assert_redirected_to image_metadata_path(assigns(:image_metadata))
  end

  test "should show image_metadata" do
    get :show, :id => image_metadatas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => image_metadatas(:one).to_param
    assert_response :success
  end

  test "should update image_metadata" do
    put :update, :id => image_metadatas(:one).to_param, :image_metadata => { }
    assert_redirected_to image_metadata_path(assigns(:image_metadata))
  end

  test "should destroy image_metadata" do
    assert_difference('ImageMetadata.count', -1) do
      delete :destroy, :id => image_metadatas(:one).to_param
    end

    assert_redirected_to image_metadatas_path
  end
end
