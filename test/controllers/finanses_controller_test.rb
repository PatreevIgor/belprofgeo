require 'test_helper'

class FinansesControllerTest < ActionController::TestCase
  setup do
    @finanse = finanses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finanses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finanse" do
    assert_difference('Finanse.count') do
      post :create, finanse: { description: @finanse.description, summa: @finanse.summa }
    end

    assert_redirected_to finanse_path(assigns(:finanse))
  end

  test "should show finanse" do
    get :show, id: @finanse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finanse
    assert_response :success
  end

  test "should update finanse" do
    patch :update, id: @finanse, finanse: { description: @finanse.description, summa: @finanse.summa }
    assert_redirected_to finanse_path(assigns(:finanse))
  end

  test "should destroy finanse" do
    assert_difference('Finanse.count', -1) do
      delete :destroy, id: @finanse
    end

    assert_redirected_to finanses_path
  end
end
