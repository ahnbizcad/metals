require 'test_helper'

class PortOfDischargesControllerTest < ActionController::TestCase
  setup do
    @port_of_discharge = port_of_discharges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:port_of_discharges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create port_of_discharge" do
    assert_difference('PortOfDischarge.count') do
      post :create, port_of_discharge: {  }
    end

    assert_redirected_to port_of_discharge_path(assigns(:port_of_discharge))
  end

  test "should show port_of_discharge" do
    get :show, id: @port_of_discharge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @port_of_discharge
    assert_response :success
  end

  test "should update port_of_discharge" do
    patch :update, id: @port_of_discharge, port_of_discharge: {  }
    assert_redirected_to port_of_discharge_path(assigns(:port_of_discharge))
  end

  test "should destroy port_of_discharge" do
    assert_difference('PortOfDischarge.count', -1) do
      delete :destroy, id: @port_of_discharge
    end

    assert_redirected_to port_of_discharges_path
  end
end
