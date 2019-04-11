require 'test_helper'

class BattlemechsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battlemech = battlemechs(:one)
  end

  test "should get index" do
    get battlemechs_url
    assert_response :success
  end

  test "should get new" do
    get new_battlemech_url
    assert_response :success
  end

  test "should create battlemech" do
    assert_difference('Battlemech.count') do
      post battlemechs_url, params: { battlemech: {  } }
    end

    assert_redirected_to battlemech_url(Battlemech.last)
  end

  test "should show battlemech" do
    get battlemech_url(@battlemech)
    assert_response :success
  end

  test "should get edit" do
    get edit_battlemech_url(@battlemech)
    assert_response :success
  end

  test "should update battlemech" do
    patch battlemech_url(@battlemech), params: { battlemech: {  } }
    assert_redirected_to battlemech_url(@battlemech)
  end

  test "should destroy battlemech" do
    assert_difference('Battlemech.count', -1) do
      delete battlemech_url(@battlemech)
    end

    assert_redirected_to battlemechs_url
  end
end
