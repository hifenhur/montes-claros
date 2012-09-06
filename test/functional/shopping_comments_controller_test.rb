require 'test_helper'

class ShoppingCommentsControllerTest < ActionController::TestCase
  setup do
    @shopping_comment = shopping_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_comment" do
    assert_difference('ShoppingComment.count') do
      post :create, shopping_comment: { comentario: @shopping_comment.comentario, email: @shopping_comment.email, nome: @shopping_comment.nome }
    end

    assert_redirected_to shopping_comment_path(assigns(:shopping_comment))
  end

  test "should show shopping_comment" do
    get :show, id: @shopping_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_comment
    assert_response :success
  end

  test "should update shopping_comment" do
    put :update, id: @shopping_comment, shopping_comment: { comentario: @shopping_comment.comentario, email: @shopping_comment.email, nome: @shopping_comment.nome }
    assert_redirected_to shopping_comment_path(assigns(:shopping_comment))
  end

  test "should destroy shopping_comment" do
    assert_difference('ShoppingComment.count', -1) do
      delete :destroy, id: @shopping_comment
    end

    assert_redirected_to shopping_comments_path
  end
end
