require 'test_helper'

class CarrosControllerTest < ActionController::TestCase
  setup do
    @carro = carros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carro" do
    assert_difference('Carro.count') do
      post :create, :carro => @carro.attributes
    end

    assert_redirected_to carro_path(assigns(:carro))
  end

  test "should show carro" do
    get :show, :id => @carro.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @carro.to_param
    assert_response :success
  end

  test "should update carro" do
    put :update, :id => @carro.to_param, :carro => @carro.attributes
    assert_redirected_to carro_path(assigns(:carro))
  end

  test "should destroy carro" do
    assert_difference('Carro.count', -1) do
      delete :destroy, :id => @carro.to_param
    end

    assert_redirected_to carros_path
  end
end
