require 'test_helper'

class UniqueHashesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unique_hashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unique_hash" do
    assert_difference('UniqueHash.count') do
      post :create, :unique_hash => { }
    end

    assert_redirected_to unique_hash_path(assigns(:unique_hash))
  end

  test "should show unique_hash" do
    get :show, :id => unique_hashes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => unique_hashes(:one).to_param
    assert_response :success
  end

  test "should update unique_hash" do
    put :update, :id => unique_hashes(:one).to_param, :unique_hash => { }
    assert_redirected_to unique_hash_path(assigns(:unique_hash))
  end

  test "should destroy unique_hash" do
    assert_difference('UniqueHash.count', -1) do
      delete :destroy, :id => unique_hashes(:one).to_param
    end

    assert_redirected_to unique_hashes_path
  end
end
