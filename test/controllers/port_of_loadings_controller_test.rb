require 'test_helper'

class PortOfLoadingsControllerTest < ActionController::TestCase
  setup do
    @port_of_loading = port_of_loadings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:port_of_loadings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create port_of_loading" do
    assert_difference('PortOfLoading.count') do
      post :create, port_of_loading: {  }
    end

    assert_redirected_to port_of_loading_path(assigns(:port_of_loading))
  end

  test "should show port_of_loading" do
    get :show, id: @port_of_loading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @port_of_loading
    assert_response :success
  end

  test "should update port_of_loading" do
    patch :update, id: @port_of_loading, port_of_loading: {  }
    assert_redirected_to port_of_loading_path(assigns(:port_of_loading))
  end

  test "should destroy port_of_loading" do
    assert_difference('PortOfLoading.count', -1) do
      delete :destroy, id: @port_of_loading
    end

    assert_redirected_to port_of_loadings_path
  end
end
