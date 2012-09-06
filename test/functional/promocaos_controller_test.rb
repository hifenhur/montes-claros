require 'test_helper'

class PromocaosControllerTest < ActionController::TestCase
  setup do
    @promocao = promocaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promocaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promocao" do
    assert_difference('Promocao.count') do
      post :create, promocao: { conteudo: @promocao.conteudo, descricao: @promocao.descricao, image: @promocao.image, titulo: @promocao.titulo, url_youtube: @promocao.url_youtube }
    end

    assert_redirected_to promocao_path(assigns(:promocao))
  end

  test "should show promocao" do
    get :show, id: @promocao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promocao
    assert_response :success
  end

  test "should update promocao" do
    put :update, id: @promocao, promocao: { conteudo: @promocao.conteudo, descricao: @promocao.descricao, image: @promocao.image, titulo: @promocao.titulo, url_youtube: @promocao.url_youtube }
    assert_redirected_to promocao_path(assigns(:promocao))
  end

  test "should destroy promocao" do
    assert_difference('Promocao.count', -1) do
      delete :destroy, id: @promocao
    end

    assert_redirected_to promocaos_path
  end
end
