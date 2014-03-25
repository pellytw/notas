require 'test_helper'

class DelegacionAdministrativasControllerTest < ActionController::TestCase
  setup do
    @delegacion_administrativa = delegacion_administrativas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delegacion_administrativas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delegacion_administrativa" do
    assert_difference('DelegacionAdministrativa.count') do
      post :create, delegacion_administrativa: { localidad_id: @delegacion_administrativa.localidad_id, nombre: @delegacion_administrativa.nombre }
    end

    assert_redirected_to delegacion_administrativa_path(assigns(:delegacion_administrativa))
  end

  test "should show delegacion_administrativa" do
    get :show, id: @delegacion_administrativa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delegacion_administrativa
    assert_response :success
  end

  test "should update delegacion_administrativa" do
    put :update, id: @delegacion_administrativa, delegacion_administrativa: { localidad_id: @delegacion_administrativa.localidad_id, nombre: @delegacion_administrativa.nombre }
    assert_redirected_to delegacion_administrativa_path(assigns(:delegacion_administrativa))
  end

  test "should destroy delegacion_administrativa" do
    assert_difference('DelegacionAdministrativa.count', -1) do
      delete :destroy, id: @delegacion_administrativa
    end

    assert_redirected_to delegacion_administrativas_path
  end
end
