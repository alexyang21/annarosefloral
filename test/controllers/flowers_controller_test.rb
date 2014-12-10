require 'test_helper'

class FlowersControllerTest < ActionController::TestCase
  setup do
    @flower = flowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flower" do
    assert_difference('Flower.count') do
      post :create, flower: { cost: @flower.cost, name: @flower.name }
    end

    assert_redirected_to flower_path(assigns(:flower))
  end

  test "should show flower" do
    get :show, id: @flower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flower
    assert_response :success
  end

  test "should update flower" do
    patch :update, id: @flower, flower: { cost: @flower.cost, name: @flower.name }
    assert_redirected_to flower_path(assigns(:flower))
  end

  test "should destroy flower" do
    assert_difference('Flower.count', -1) do
      delete :destroy, id: @flower
    end

    assert_redirected_to flowers_path
  end
end
