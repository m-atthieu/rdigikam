require 'test_helper'

class ImageHaarMatricesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_haar_matrices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_haar_matrix" do
    assert_difference('ImageHaarMatrix.count') do
      post :create, :image_haar_matrix => { }
    end

    assert_redirected_to image_haar_matrix_path(assigns(:image_haar_matrix))
  end

  test "should show image_haar_matrix" do
    get :show, :id => image_haar_matrices(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => image_haar_matrices(:one).to_param
    assert_response :success
  end

  test "should update image_haar_matrix" do
    put :update, :id => image_haar_matrices(:one).to_param, :image_haar_matrix => { }
    assert_redirected_to image_haar_matrix_path(assigns(:image_haar_matrix))
  end

  test "should destroy image_haar_matrix" do
    assert_difference('ImageHaarMatrix.count', -1) do
      delete :destroy, :id => image_haar_matrices(:one).to_param
    end

    assert_redirected_to image_haar_matrices_path
  end
end
