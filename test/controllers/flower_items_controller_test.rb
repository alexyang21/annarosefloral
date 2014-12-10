require 'test_helper'

class FlowerItemsControllerTest < ActionController::TestCase
  setup do
    @flower_item = flower_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flower_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flower_item" do
    assert_difference('FlowerItem.count') do
      post :create, flower_item: { quantity: @flower_item.quantity }
    end

    assert_redirected_to flower_item_path(assigns(:flower_item))
  end

  test "should show flower_item" do
    get :show, id: @flower_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flower_item
    assert_response :success
  end

  test "should update flower_item" do
    patch :update, id: @flower_item, flower_item: { quantity: @flower_item.quantity }
    assert_redirected_to flower_item_path(assigns(:flower_item))
  end

  test "should destroy flower_item" do
    assert_difference('FlowerItem.count', -1) do
      delete :destroy, id: @flower_item
    end

    assert_redirected_to flower_items_path
  end
end
