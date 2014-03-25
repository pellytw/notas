require 'test_helper'

class DocumentoAnexosControllerTest < ActionController::TestCase
  setup do
    @documento_anexo = documento_anexos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documento_anexos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documento_anexo" do
    assert_difference('DocumentoAnexo.count') do
      post :create, documento_anexo: { anio: @documento_anexo.anio, documento_id: @documento_anexo.documento_id, fecha: @documento_anexo.fecha, numero: @documento_anexo.numero, tipo_documento_id: @documento_anexo.tipo_documento_id }
    end

    assert_redirected_to documento_anexo_path(assigns(:documento_anexo))
  end

  test "should show documento_anexo" do
    get :show, id: @documento_anexo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documento_anexo
    assert_response :success
  end

  test "should update documento_anexo" do
    put :update, id: @documento_anexo, documento_anexo: { anio: @documento_anexo.anio, documento_id: @documento_anexo.documento_id, fecha: @documento_anexo.fecha, numero: @documento_anexo.numero, tipo_documento_id: @documento_anexo.tipo_documento_id }
    assert_redirected_to documento_anexo_path(assigns(:documento_anexo))
  end

  test "should destroy documento_anexo" do
    assert_difference('DocumentoAnexo.count', -1) do
      delete :destroy, id: @documento_anexo
    end

    assert_redirected_to documento_anexos_path
  end
end
