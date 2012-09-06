require 'test_helper'

class LojasControllerTest < ActionController::TestCase
  setup do
    @loja = lojas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lojas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loja" do
    assert_difference('Loja.count') do
      post :create, loja: { descricao: @loja.descricao, foto: @loja.foto, nome: @loja.nome, telefone: @loja.telefone }
    end

    assert_redirected_to loja_path(assigns(:loja))
  end

  test "should show loja" do
    get :show, id: @loja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loja
    assert_response :success
  end

  test "should update loja" do
    put :update, id: @loja, loja: { descricao: @loja.descricao, foto: @loja.foto, nome: @loja.nome, telefone: @loja.telefone }
    assert_redirected_to loja_path(assigns(:loja))
  end

  test "should destroy loja" do
    assert_difference('Loja.count', -1) do
      delete :destroy, id: @loja
    end

    assert_redirected_to lojas_path
  end
end
