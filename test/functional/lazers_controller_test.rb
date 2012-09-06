require 'test_helper'

class LazersControllerTest < ActionController::TestCase
  setup do
    @lazer = lazers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lazers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lazer" do
    assert_difference('Lazer.count') do
      post :create, lazer: { descricao: @lazer.descricao, imagem: @lazer.imagem }
    end

    assert_redirected_to lazer_path(assigns(:lazer))
  end

  test "should show lazer" do
    get :show, id: @lazer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lazer
    assert_response :success
  end

  test "should update lazer" do
    put :update, id: @lazer, lazer: { descricao: @lazer.descricao, imagem: @lazer.imagem }
    assert_redirected_to lazer_path(assigns(:lazer))
  end

  test "should destroy lazer" do
    assert_difference('Lazer.count', -1) do
      delete :destroy, id: @lazer
    end

    assert_redirected_to lazers_path
  end
end
