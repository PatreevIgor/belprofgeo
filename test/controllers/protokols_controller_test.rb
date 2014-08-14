require 'test_helper'

class ProtokolsControllerTest < ActionController::TestCase
  setup do
    @protokol = protokols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:protokols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create protokol" do
    assert_difference('Protokol.count') do
      post :create, protokol: { description: @protokol.description, number: @protokol.number }
    end

    assert_redirected_to protokol_path(assigns(:protokol))
  end

  test "should show protokol" do
    get :show, id: @protokol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @protokol
    assert_response :success
  end

  test "should update protokol" do
    patch :update, id: @protokol, protokol: { description: @protokol.description, number: @protokol.number }
    assert_redirected_to protokol_path(assigns(:protokol))
  end

  test "should destroy protokol" do
    assert_difference('Protokol.count', -1) do
      delete :destroy, id: @protokol
    end

    assert_redirected_to protokols_path
  end
end
