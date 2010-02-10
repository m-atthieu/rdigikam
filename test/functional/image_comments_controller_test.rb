require 'test_helper'

class ImageCommentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_comment" do
    assert_difference('ImageComment.count') do
      post :create, :image_comment => { }
    end

    assert_redirected_to image_comment_path(assigns(:image_comment))
  end

  test "should show image_comment" do
    get :show, :id => image_comments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => image_comments(:one).to_param
    assert_response :success
  end

  test "should update image_comment" do
    put :update, :id => image_comments(:one).to_param, :image_comment => { }
    assert_redirected_to image_comment_path(assigns(:image_comment))
  end

  test "should destroy image_comment" do
    assert_difference('ImageComment.count', -1) do
      delete :destroy, :id => image_comments(:one).to_param
    end

    assert_redirected_to image_comments_path
  end
end
