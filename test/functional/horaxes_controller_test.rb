require 'test_helper'

class HoraxesControllerTest < ActionController::TestCase
  setup do
    @horaxis = horaxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horaxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horaxis" do
    assert_difference('Horax.count') do
      post :create, horaxis: { hora: @horaxis.hora }
    end

    assert_redirected_to horaxis_path(assigns(:horaxis))
  end

  test "should show horaxis" do
    get :show, id: @horaxis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horaxis
    assert_response :success
  end

  test "should update horaxis" do
    put :update, id: @horaxis, horaxis: { hora: @horaxis.hora }
    assert_redirected_to horaxis_path(assigns(:horaxis))
  end

  test "should destroy horaxis" do
    assert_difference('Horax.count', -1) do
      delete :destroy, id: @horaxis
    end

    assert_redirected_to horaxes_path
  end
end
