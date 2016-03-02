require 'test_helper'

class EstantesControllerTest < ActionController::TestCase
  setup do
    @estante = estantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estante" do
    assert_difference('Estante.count') do
      post :create, estante: { libro_id: @estante.libro_id, usuario_id: @estante.usuario_id }
    end

    assert_redirected_to estante_path(assigns(:estante))
  end

  test "should show estante" do
    get :show, id: @estante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estante
    assert_response :success
  end

  test "should update estante" do
    patch :update, id: @estante, estante: { libro_id: @estante.libro_id, usuario_id: @estante.usuario_id }
    assert_redirected_to estante_path(assigns(:estante))
  end

  test "should destroy estante" do
    assert_difference('Estante.count', -1) do
      delete :destroy, id: @estante
    end

    assert_redirected_to estantes_path
  end
end
