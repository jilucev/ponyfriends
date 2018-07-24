require 'test_helper'

class MagicalPowersControllerTest < ActionController::TestCase
  setup do
    @magical_power = magical_powers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magical_powers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magical_power" do
    assert_difference('MagicalPower.count') do
      post :create, magical_power: { intensity: @magical_power.intensity, name: @magical_power.name }
    end

    assert_redirected_to magical_power_path(assigns(:magical_power))
  end

  test "should show magical_power" do
    get :show, id: @magical_power
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magical_power
    assert_response :success
  end

  test "should update magical_power" do
    patch :update, id: @magical_power, magical_power: { intensity: @magical_power.intensity, name: @magical_power.name }
    assert_redirected_to magical_power_path(assigns(:magical_power))
  end

  test "should destroy magical_power" do
    assert_difference('MagicalPower.count', -1) do
      delete :destroy, id: @magical_power
    end

    assert_redirected_to magical_powers_path
  end
end
