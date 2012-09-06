require 'test_helper'

class IngressosControllerTest < ActionController::TestCase
  setup do
    @ingresso = ingressos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingressos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingresso" do
    assert_difference('Ingresso.count') do
      post :create, ingresso: { inteira: @ingresso.inteira, meia: @ingresso.meia, nome: @ingresso.nome }
    end

    assert_redirected_to ingresso_path(assigns(:ingresso))
  end

  test "should show ingresso" do
    get :show, id: @ingresso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingresso
    assert_response :success
  end

  test "should update ingresso" do
    put :update, id: @ingresso, ingresso: { inteira: @ingresso.inteira, meia: @ingresso.meia, nome: @ingresso.nome }
    assert_redirected_to ingresso_path(assigns(:ingresso))
  end

  test "should destroy ingresso" do
    assert_difference('Ingresso.count', -1) do
      delete :destroy, id: @ingresso
    end

    assert_redirected_to ingressos_path
  end
end
