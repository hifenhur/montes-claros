require 'test_helper'

class HorarioInfsControllerTest < ActionController::TestCase
  setup do
    @horario_inf = horario_infs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horario_infs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horario_inf" do
    assert_difference('HorarioInf.count') do
      post :create, horario_inf: { informacao: @horario_inf.informacao, nome: @horario_inf.nome }
    end

    assert_redirected_to horario_inf_path(assigns(:horario_inf))
  end

  test "should show horario_inf" do
    get :show, id: @horario_inf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horario_inf
    assert_response :success
  end

  test "should update horario_inf" do
    put :update, id: @horario_inf, horario_inf: { informacao: @horario_inf.informacao, nome: @horario_inf.nome }
    assert_redirected_to horario_inf_path(assigns(:horario_inf))
  end

  test "should destroy horario_inf" do
    assert_difference('HorarioInf.count', -1) do
      delete :destroy, id: @horario_inf
    end

    assert_redirected_to horario_infs_path
  end
end
