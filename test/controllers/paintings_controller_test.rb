require 'test_helper'

class PaintingsControllerTest < ActionController::TestCase
  setup do
    @painting = paintings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paintings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create painting" do
    assert_difference('Painting.count') do
      post :create, painting: { category_id: @painting.category_id, description: @painting.description, materials: @painting.materials, price: @painting.price, quantity: @painting.quantity, size: @painting.size, title: @painting.title }
    end

    assert_redirected_to painting_path(assigns(:painting))
  end

  test "should show painting" do
    get :show, id: @painting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @painting
    assert_response :success
  end

  test "should update painting" do
    patch :update, id: @painting, painting: { category_id: @painting.category_id, description: @painting.description, materials: @painting.materials, price: @painting.price, quantity: @painting.quantity, size: @painting.size, title: @painting.title }
    assert_redirected_to painting_path(assigns(:painting))
  end

  test "should destroy painting" do
    assert_difference('Painting.count', -1) do
      delete :destroy, id: @painting
    end

    assert_redirected_to paintings_path
  end
end
