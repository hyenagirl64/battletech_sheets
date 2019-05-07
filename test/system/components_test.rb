require "application_system_test_case"

class ComponentsTest < ApplicationSystemTestCase
  setup do
    @component = components(:one)
  end

  test "visiting the index" do
    visit components_url
    assert_selector "h1", text: "Listing Components"
  end

  test "creating a Component" do
    visit components_url
    click_on "New Component"

    fill_in "Ammoperton", with: @component.ammoperton
    fill_in "Damage", with: @component.damage
    fill_in "Heat", with: @component.heat
    fill_in "Longrange", with: @component.longrange
    fill_in "Medrange", with: @component.medrange
    fill_in "Minrange", with: @component.minrange
    fill_in "Name", with: @component.name
    fill_in "Shrtrange", with: @component.shrtrange
    fill_in "Tohitmod", with: @component.tohitmod
    fill_in "Types", with: @component.types
    click_on "Save"

    assert_text "Component was successfully created"
    click_on "Back"
  end

  test "updating a Component" do
    visit components_url
    click_on "Edit", match: :first

    fill_in "Ammoperton", with: @component.ammoperton
    fill_in "Damage", with: @component.damage
    fill_in "Heat", with: @component.heat
    fill_in "Longrange", with: @component.longrange
    fill_in "Medrange", with: @component.medrange
    fill_in "Minrange", with: @component.minrange
    fill_in "Name", with: @component.name
    fill_in "Shrtrange", with: @component.shrtrange
    fill_in "Tohitmod", with: @component.tohitmod
    fill_in "Types", with: @component.types
    click_on "Save"

    assert_text "Component was successfully updated"
    click_on "Back"
  end

  test "destroying a Component" do
    visit components_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    #assert_text "Component was successfully destroyed"
  end
end
