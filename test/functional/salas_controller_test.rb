require 'test_helper'

class SalasControllerTest < ActionController::TestCase
  setup do
    @sala = salas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sala" do
    assert_difference('Sala.count') do
      post :create, sala: { fh1: @sala.fh1, fh2: @sala.fh2, fh3: @sala.fh3, fh4: @sala.fh4, fh5: @sala.fh5, legendado: @sala.legendado, nome: @sala.nome, sh1: @sala.sh1, sh2: @sala.sh2, sh3: @sala.sh3, sh4: @sala.sh4, sh5: @sala.sh5, tresD: @sala.tresD }
    end

    assert_redirected_to sala_path(assigns(:sala))
  end

  test "should show sala" do
    get :show, id: @sala
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sala
    assert_response :success
  end

  test "should update sala" do
    put :update, id: @sala, sala: { fh1: @sala.fh1, fh2: @sala.fh2, fh3: @sala.fh3, fh4: @sala.fh4, fh5: @sala.fh5, legendado: @sala.legendado, nome: @sala.nome, sh1: @sala.sh1, sh2: @sala.sh2, sh3: @sala.sh3, sh4: @sala.sh4, sh5: @sala.sh5, tresD: @sala.tresD }
    assert_redirected_to sala_path(assigns(:sala))
  end

  test "should destroy sala" do
    assert_difference('Sala.count', -1) do
      delete :destroy, id: @sala
    end

    assert_redirected_to salas_path
  end
end
