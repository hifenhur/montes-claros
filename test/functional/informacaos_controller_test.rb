require 'test_helper'

class InformacaosControllerTest < ActionController::TestCase
  setup do
    @informacao = informacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacao" do
    assert_difference('Informacao.count') do
      post :create, informacao: { assunto: @informacao.assunto, email: @informacao.email, mensagem: @informacao.mensagem, nome: @informacao.nome, nome_empresa: @informacao.nome_empresa, telefone: @informacao.telefone }
    end

    assert_redirected_to informacao_path(assigns(:informacao))
  end

  test "should show informacao" do
    get :show, id: @informacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacao
    assert_response :success
  end

  test "should update informacao" do
    put :update, id: @informacao, informacao: { assunto: @informacao.assunto, email: @informacao.email, mensagem: @informacao.mensagem, nome: @informacao.nome, nome_empresa: @informacao.nome_empresa, telefone: @informacao.telefone }
    assert_redirected_to informacao_path(assigns(:informacao))
  end

  test "should destroy informacao" do
    assert_difference('Informacao.count', -1) do
      delete :destroy, id: @informacao
    end

    assert_redirected_to informacaos_path
  end
end
