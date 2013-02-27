require 'test_helper'

class InterprisesControllerTest < ActionController::TestCase
  setup do
    @interprise = interprises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interprises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interprise" do
    assert_difference('Interprise.count') do
      post :create, interprise: { fantasy_name: @interprise.fantasy_name, name: @interprise.name }
    end

    assert_redirected_to interprise_path(assigns(:interprise))
  end

  test "should show interprise" do
    get :show, id: @interprise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interprise
    assert_response :success
  end

  test "should update interprise" do
    put :update, id: @interprise, interprise: { fantasy_name: @interprise.fantasy_name, name: @interprise.name }
    assert_redirected_to interprise_path(assigns(:interprise))
  end

  test "should destroy interprise" do
    assert_difference('Interprise.count', -1) do
      delete :destroy, id: @interprise
    end

    assert_redirected_to interprises_path
  end
end
