require 'test_helper'

class TilesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tile" do
    assert_difference('Tile.count') do
      post :create, :tile => { }
    end

    assert_redirected_to tile_path(assigns(:tile))
  end

  test "should show tile" do
    get :show, :id => tiles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tiles(:one).to_param
    assert_response :success
  end

  test "should update tile" do
    put :update, :id => tiles(:one).to_param, :tile => { }
    assert_redirected_to tile_path(assigns(:tile))
  end

  test "should destroy tile" do
    assert_difference('Tile.count', -1) do
      delete :destroy, :id => tiles(:one).to_param
    end

    assert_redirected_to tiles_path
  end
end
