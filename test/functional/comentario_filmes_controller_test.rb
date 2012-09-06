require 'test_helper'

class ComentarioFilmesControllerTest < ActionController::TestCase
  setup do
    @comentario_filme = comentario_filmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comentario_filmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comentario_filme" do
    assert_difference('ComentarioFilme.count') do
      post :create, comentario_filme: { autorizado: @comentario_filme.autorizado, comentario: @comentario_filme.comentario, email: @comentario_filme.email, nome: @comentario_filme.nome }
    end

    assert_redirected_to comentario_filme_path(assigns(:comentario_filme))
  end

  test "should show comentario_filme" do
    get :show, id: @comentario_filme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comentario_filme
    assert_response :success
  end

  test "should update comentario_filme" do
    put :update, id: @comentario_filme, comentario_filme: { autorizado: @comentario_filme.autorizado, comentario: @comentario_filme.comentario, email: @comentario_filme.email, nome: @comentario_filme.nome }
    assert_redirected_to comentario_filme_path(assigns(:comentario_filme))
  end

  test "should destroy comentario_filme" do
    assert_difference('ComentarioFilme.count', -1) do
      delete :destroy, id: @comentario_filme
    end

    assert_redirected_to comentario_filmes_path
  end
end
