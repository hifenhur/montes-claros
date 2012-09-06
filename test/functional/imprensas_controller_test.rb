require 'test_helper'

class ImprensasControllerTest < ActionController::TestCase
  setup do
    @imprensa = imprensas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imprensas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imprensa" do
    assert_difference('Imprensa.count') do
      post :create, imprensa: { conteudo: @imprensa.conteudo, imagem: @imprensa.imagem }
    end

    assert_redirected_to imprensa_path(assigns(:imprensa))
  end

  test "should show imprensa" do
    get :show, id: @imprensa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imprensa
    assert_response :success
  end

  test "should update imprensa" do
    put :update, id: @imprensa, imprensa: { conteudo: @imprensa.conteudo, imagem: @imprensa.imagem }
    assert_redirected_to imprensa_path(assigns(:imprensa))
  end

  test "should destroy imprensa" do
    assert_difference('Imprensa.count', -1) do
      delete :destroy, id: @imprensa
    end

    assert_redirected_to imprensas_path
  end
end
