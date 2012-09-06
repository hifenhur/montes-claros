require 'test_helper'

class LojaAlimentacaosControllerTest < ActionController::TestCase
  setup do
    @loja_alimentacao = loja_alimentacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loja_alimentacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loja_alimentacao" do
    assert_difference('LojaAlimentacao.count') do
      post :create, loja_alimentacao: { categoria_alimentacao: @loja_alimentacao.categoria_alimentacao, descricao: @loja_alimentacao.descricao, image: @loja_alimentacao.image, nome: @loja_alimentacao.nome, telefone: @loja_alimentacao.telefone }
    end

    assert_redirected_to loja_alimentacao_path(assigns(:loja_alimentacao))
  end

  test "should show loja_alimentacao" do
    get :show, id: @loja_alimentacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loja_alimentacao
    assert_response :success
  end

  test "should update loja_alimentacao" do
    put :update, id: @loja_alimentacao, loja_alimentacao: { categoria_alimentacao: @loja_alimentacao.categoria_alimentacao, descricao: @loja_alimentacao.descricao, image: @loja_alimentacao.image, nome: @loja_alimentacao.nome, telefone: @loja_alimentacao.telefone }
    assert_redirected_to loja_alimentacao_path(assigns(:loja_alimentacao))
  end

  test "should destroy loja_alimentacao" do
    assert_difference('LojaAlimentacao.count', -1) do
      delete :destroy, id: @loja_alimentacao
    end

    assert_redirected_to loja_alimentacaos_path
  end
end
