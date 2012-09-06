require 'test_helper'

class ComercioGaleriesControllerTest < ActionController::TestCase
  setup do
    @comercio_galery = comercio_galeries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comercio_galeries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comercio_galery" do
    assert_difference('ComercioGalery.count') do
      post :create, comercio_galery: { image: @comercio_galery.image }
    end

    assert_redirected_to comercio_galery_path(assigns(:comercio_galery))
  end

  test "should show comercio_galery" do
    get :show, id: @comercio_galery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comercio_galery
    assert_response :success
  end

  test "should update comercio_galery" do
    put :update, id: @comercio_galery, comercio_galery: { image: @comercio_galery.image }
    assert_redirected_to comercio_galery_path(assigns(:comercio_galery))
  end

  test "should destroy comercio_galery" do
    assert_difference('ComercioGalery.count', -1) do
      delete :destroy, id: @comercio_galery
    end

    assert_redirected_to comercio_galeries_path
  end
end
