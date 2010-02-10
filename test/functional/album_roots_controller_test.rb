require 'test_helper'

class AlbumRootsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:album_roots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create album_root" do
    assert_difference('AlbumRoot.count') do
      post :create, :album_root => { }
    end

    assert_redirected_to album_root_path(assigns(:album_root))
  end

  test "should show album_root" do
    get :show, :id => album_roots(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => album_roots(:one).to_param
    assert_response :success
  end

  test "should update album_root" do
    put :update, :id => album_roots(:one).to_param, :album_root => { }
    assert_redirected_to album_root_path(assigns(:album_root))
  end

  test "should destroy album_root" do
    assert_difference('AlbumRoot.count', -1) do
      delete :destroy, :id => album_roots(:one).to_param
    end

    assert_redirected_to album_roots_path
  end
end
