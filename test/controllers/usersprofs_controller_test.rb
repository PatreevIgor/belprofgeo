require 'test_helper'

class UsersprofsControllerTest < ActionController::TestCase
  setup do
    @usersprof = usersprofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usersprofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usersprof" do
    assert_difference('Usersprof.count') do
      post :create, usersprof: { kartschet: @usersprof.kartschet, name: @usersprof.name, telefon: @usersprof.telefon }
    end

    assert_redirected_to usersprof_path(assigns(:usersprof))
  end

  test "should show usersprof" do
    get :show, id: @usersprof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usersprof
    assert_response :success
  end

  test "should update usersprof" do
    patch :update, id: @usersprof, usersprof: { kartschet: @usersprof.kartschet, name: @usersprof.name, telefon: @usersprof.telefon }
    assert_redirected_to usersprof_path(assigns(:usersprof))
  end

  test "should destroy usersprof" do
    assert_difference('Usersprof.count', -1) do
      delete :destroy, id: @usersprof
    end

    assert_redirected_to usersprofs_path
  end
end
