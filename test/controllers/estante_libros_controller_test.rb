require 'test_helper'

class EstanteLibrosControllerTest < ActionController::TestCase
  setup do
    @estante_libro = estante_libros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estante_libros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estante_libro" do
    assert_difference('EstanteLibro.count') do
      post :create, estante_libro: { estante_id: @estante_libro.estante_id, libro_id: @estante_libro.libro_id }
    end

    assert_redirected_to estante_libro_path(assigns(:estante_libro))
  end

  test "should show estante_libro" do
    get :show, id: @estante_libro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estante_libro
    assert_response :success
  end

  test "should update estante_libro" do
    patch :update, id: @estante_libro, estante_libro: { estante_id: @estante_libro.estante_id, libro_id: @estante_libro.libro_id }
    assert_redirected_to estante_libro_path(assigns(:estante_libro))
  end

  test "should destroy estante_libro" do
    assert_difference('EstanteLibro.count', -1) do
      delete :destroy, id: @estante_libro
    end

    assert_redirected_to estante_libros_path
  end
end
