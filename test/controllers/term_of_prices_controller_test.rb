require 'test_helper'

class TermOfPricesControllerTest < ActionController::TestCase
  setup do
    @term_of_price = term_of_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:term_of_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term_of_price" do
    assert_difference('TermOfPrice.count') do
      post :create, term_of_price: {  }
    end

    assert_redirected_to term_of_price_path(assigns(:term_of_price))
  end

  test "should show term_of_price" do
    get :show, id: @term_of_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term_of_price
    assert_response :success
  end

  test "should update term_of_price" do
    patch :update, id: @term_of_price, term_of_price: {  }
    assert_redirected_to term_of_price_path(assigns(:term_of_price))
  end

  test "should destroy term_of_price" do
    assert_difference('TermOfPrice.count', -1) do
      delete :destroy, id: @term_of_price
    end

    assert_redirected_to term_of_prices_path
  end
end
