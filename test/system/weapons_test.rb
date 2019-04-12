require "application_system_test_case"

class WeaponsTest < ApplicationSystemTestCase
  setup do
    @weapon = weapons(:one)
  end

  test "visiting the index" do
    visit weapons_url
    assert_selector "h1", text: "Listing weapons"
  end

  test "creating a Weapon" do
    visit weapons_url
    click_on "New Weapon"

    fill_in "Ammoperton", with: @weapon.ammoperton
    fill_in "Damage", with: @weapon.damage
    fill_in "Heat", with: @weapon.heat
    fill_in "Longrange", with: @weapon.longrange
    fill_in "Medrange", with: @weapon.medrange
    fill_in "Minrange", with: @weapon.minrange
    fill_in "Name", with: @weapon.name
    fill_in "Shrtrange", with: @weapon.shrtrange
    fill_in "Tohitmod", with: @weapon.tohitmod
    fill_in "Types", with: @weapon.types
    click_on "Save"

    assert_text "Weapon was successfully created"
    click_on "Back"
  end

  test "updating a Weapon" do
    visit weapons_url
    click_on "Edit", match: :first

    fill_in "Ammoperton", with: @weapon.ammoperton
    fill_in "Damage", with: @weapon.damage
    fill_in "Heat", with: @weapon.heat
    fill_in "Longrange", with: @weapon.longrange
    fill_in "Medrange", with: @weapon.medrange
    fill_in "Minrange", with: @weapon.minrange
    fill_in "Name", with: @weapon.name
    fill_in "Shrtrange", with: @weapon.shrtrange
    fill_in "Tohitmod", with: @weapon.tohitmod
    fill_in "Types", with: @weapon.types
    click_on "Save"

    assert_text "Weapon was successfully updated"
    click_on "Back"
  end

  test "destroying a Weapon" do
    visit weapons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    #assert_text "Weapon was successfully destroyed"
  end
end
