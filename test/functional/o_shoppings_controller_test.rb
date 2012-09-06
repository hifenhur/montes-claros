require 'test_helper'

class OShoppingsControllerTest < ActionController::TestCase
  setup do
    @o_shopping = o_shoppings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:o_shoppings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create o_shopping" do
    assert_difference('OShopping.count') do
      post :create, o_shopping: { conteudo: @o_shopping.conteudo, imagem: @o_shopping.imagem, subtitulo: @o_shopping.subtitulo }
    end

    assert_redirected_to o_shopping_path(assigns(:o_shopping))
  end

  test "should show o_shopping" do
    get :show, id: @o_shopping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @o_shopping
    assert_response :success
  end

  test "should update o_shopping" do
    put :update, id: @o_shopping, o_shopping: { conteudo: @o_shopping.conteudo, imagem: @o_shopping.imagem, subtitulo: @o_shopping.subtitulo }
    assert_redirected_to o_shopping_path(assigns(:o_shopping))
  end

  test "should destroy o_shopping" do
    assert_difference('OShopping.count', -1) do
      delete :destroy, id: @o_shopping
    end

    assert_redirected_to o_shoppings_path
  end
end
