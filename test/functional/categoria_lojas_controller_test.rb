require 'test_helper'

class CategoriaLojasControllerTest < ActionController::TestCase
  setup do
    @categoria_loja = categoria_lojas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_lojas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_loja" do
    assert_difference('CategoriaLoja.count') do
      post :create, categoria_loja: { nome: @categoria_loja.nome }
    end

    assert_redirected_to categoria_loja_path(assigns(:categoria_loja))
  end

  test "should show categoria_loja" do
    get :show, id: @categoria_loja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria_loja
    assert_response :success
  end

  test "should update categoria_loja" do
    put :update, id: @categoria_loja, categoria_loja: { nome: @categoria_loja.nome }
    assert_redirected_to categoria_loja_path(assigns(:categoria_loja))
  end

  test "should destroy categoria_loja" do
    assert_difference('CategoriaLoja.count', -1) do
      delete :destroy, id: @categoria_loja
    end

    assert_redirected_to categoria_lojas_path
  end
end
