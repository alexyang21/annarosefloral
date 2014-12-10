require 'test_helper'

class FlowerArrangementsControllerTest < ActionController::TestCase
  setup do
    @flower_arrangement = flower_arrangements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flower_arrangements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flower_arrangement" do
    assert_difference('FlowerArrangement.count') do
      post :create, flower_arrangement: { name: @flower_arrangement.name, type: @flower_arrangement.type }
    end

    assert_redirected_to flower_arrangement_path(assigns(:flower_arrangement))
  end

  test "should show flower_arrangement" do
    get :show, id: @flower_arrangement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flower_arrangement
    assert_response :success
  end

  test "should update flower_arrangement" do
    patch :update, id: @flower_arrangement, flower_arrangement: { name: @flower_arrangement.name, type: @flower_arrangement.type }
    assert_redirected_to flower_arrangement_path(assigns(:flower_arrangement))
  end

  test "should destroy flower_arrangement" do
    assert_difference('FlowerArrangement.count', -1) do
      delete :destroy, id: @flower_arrangement
    end

    assert_redirected_to flower_arrangements_path
  end
end
