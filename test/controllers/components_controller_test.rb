require 'test_helper'

class ComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component = components(:one)
  end

  test "should get index" do
    get components_url
    assert_response :success
  end

  test "should get new" do
    get new_component_url
    assert_response :success
  end

  test "should create component" do
    assert_difference('Component.count') do
      post components_url, params: { component: { ammoperton: @component.ammoperton, damage: @component.damage, heat: @component.heat, longrange: @component.longrange, medrange: @component.medrange, minrange: @component.minrange, name: @component.name, shrtrange: @component.shrtrange, tohitmod: @component.tohitmod, types: @component.types } }
    end

    assert_redirected_to component_url(Component.last)
  end

  test "should show component" do
    get component_url(@component)
    assert_response :success
  end

  test "should get edit" do
    get edit_component_url(@component)
    assert_response :success
  end

  test "should update component" do
    patch component_url(@component), params: { component: { ammoperton: @component.ammoperton, damage: @component.damage, heat: @component.heat, longrange: @component.longrange, medrange: @component.medrange, minrange: @component.minrange, name: @component.name, shrtrange: @component.shrtrange, tohitmod: @component.tohitmod, types: @component.types } }
    assert_redirected_to component_url(@component)
  end

  test "should destroy component" do
    assert_difference('Component.count', -1) do
      delete component_url(@component)
    end

    assert_redirected_to components_url
  end
end