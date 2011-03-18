require 'test_helper'

class ServiceQuotesControllerTest < ActionController::TestCase
  setup do
    @service_quote = service_quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_quote" do
    assert_difference('ServiceQuote.count') do
      post :create, :service_quote => @service_quote.attributes
    end

    assert_redirected_to service_quote_path(assigns(:service_quote))
  end

  test "should show service_quote" do
    get :show, :id => @service_quote.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @service_quote.to_param
    assert_response :success
  end

  test "should update service_quote" do
    put :update, :id => @service_quote.to_param, :service_quote => @service_quote.attributes
    assert_redirected_to service_quote_path(assigns(:service_quote))
  end

  test "should destroy service_quote" do
    assert_difference('ServiceQuote.count', -1) do
      delete :destroy, :id => @service_quote.to_param
    end

    assert_redirected_to service_quotes_path
  end
end
