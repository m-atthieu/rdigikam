require 'test_helper'

class FilePathsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_paths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_path" do
    assert_difference('FilePath.count') do
      post :create, :file_path => { }
    end

    assert_redirected_to file_path_path(assigns(:file_path))
  end

  test "should show file_path" do
    get :show, :id => file_paths(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => file_paths(:one).to_param
    assert_response :success
  end

  test "should update file_path" do
    put :update, :id => file_paths(:one).to_param, :file_path => { }
    assert_redirected_to file_path_path(assigns(:file_path))
  end

  test "should destroy file_path" do
    assert_difference('FilePath.count', -1) do
      delete :destroy, :id => file_paths(:one).to_param
    end

    assert_redirected_to file_paths_path
  end
end
