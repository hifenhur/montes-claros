require 'test_helper'

class CategoriaAlimentacaosControllerTest < ActionController::TestCase
  setup do
    @categoria_alimentacao = categoria_alimentacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_alimentacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_alimentacao" do
    assert_difference('CategoriaAlimentacao.count') do
      post :create, categoria_alimentacao: { nome: @categoria_alimentacao.nome }
    end

    assert_redirected_to categoria_alimentacao_path(assigns(:categoria_alimentacao))
  end

  test "should show categoria_alimentacao" do
    get :show, id: @categoria_alimentacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria_alimentacao
    assert_response :success
  end

  test "should update categoria_alimentacao" do
    put :update, id: @categoria_alimentacao, categoria_alimentacao: { nome: @categoria_alimentacao.nome }
    assert_redirected_to categoria_alimentacao_path(assigns(:categoria_alimentacao))
  end

  test "should destroy categoria_alimentacao" do
    assert_difference('CategoriaAlimentacao.count', -1) do
      delete :destroy, id: @categoria_alimentacao
    end

    assert_redirected_to categoria_alimentacaos_path
  end
end
