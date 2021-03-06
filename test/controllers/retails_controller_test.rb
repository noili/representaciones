require 'test_helper'

class RetailsControllerTest < ActionController::TestCase
  setup do
    @operator = operators(:agencia)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operator" do
    assert_difference('Retail.count') do
      post :create, retail: { name: @operator.name }
    end

    assert_redirected_to retail_path(assigns(:operator))
  end

  test "should show operator" do
    get :show, id: @operator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operator
    assert_response :success
  end

  test "should update operator" do
    patch :update, id: @operator, retail: { name: @operator.name }
    assert_redirected_to retail_path(assigns(:operator))
  end

  test "should destroy operator" do
    assert_difference('Retail.count', -1) do
      delete :destroy, id: @operator
    end

    assert_redirected_to retails_path
  end
end
