require 'test_helper'

class DocumentosControllerTest < ActionController::TestCase
  setup do
    @documento = documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documento" do
    assert_difference('Documento.count') do
      post :create, documento: { anio: @documento.anio, asunto: @documento.asunto, autorizado: @documento.autorizado, destinatario: @documento.destinatario, fecha_documento: @documento.fecha_documento, fecha_recepcion: @documento.fecha_recepcion, fecha_salida: @documento.fecha_salida, iniciado_por: @documento.iniciado_por, localidad_id: @documento.localidad_id, motivo: @documento.motivo, nombres_y_apellidos: @documento.nombres_y_apellidos, nro_documento: @documento.nro_documento, nro_salida: @documento.nro_salida, observacion: @documento.observacion, procedencia: @documento.procedencia, se_encuentra_en: @documento.se_encuentra_en, sigla: @documento.sigla, tipo_documento_id: @documento.tipo_documento_id }
    end

    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should show documento" do
    get :show, id: @documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documento
    assert_response :success
  end

  test "should update documento" do
    put :update, id: @documento, documento: { anio: @documento.anio, asunto: @documento.asunto, autorizado: @documento.autorizado, destinatario: @documento.destinatario, fecha_documento: @documento.fecha_documento, fecha_recepcion: @documento.fecha_recepcion, fecha_salida: @documento.fecha_salida, iniciado_por: @documento.iniciado_por, localidad_id: @documento.localidad_id, motivo: @documento.motivo, nombres_y_apellidos: @documento.nombres_y_apellidos, nro_documento: @documento.nro_documento, nro_salida: @documento.nro_salida, observacion: @documento.observacion, procedencia: @documento.procedencia, se_encuentra_en: @documento.se_encuentra_en, sigla: @documento.sigla, tipo_documento_id: @documento.tipo_documento_id }
    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should destroy documento" do
    assert_difference('Documento.count', -1) do
      delete :destroy, id: @documento
    end

    assert_redirected_to documentos_path
  end
end
