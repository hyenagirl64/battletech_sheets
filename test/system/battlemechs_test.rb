require "application_system_test_case"

class BattlemechsTest < ApplicationSystemTestCase
  setup do
    @battlemech = battlemechs(:one)
  end

  test "visiting the index" do
    visit battlemechs_url
    assert_selector "h1", text: "Listing battlemechs"
  end

  test "creating a Battlemech" do
    visit battlemechs_url
    click_on "New Battlemech"

    fill_in "Serial", with: "STEST-XX"
    fill_in "Name", with: "Systemic"
    fill_in "Tech base", with: "Inner Sphere"
    fill_in "Year made", with: 2099
    fill_in "Tonnage", with: 40
    fill_in "Battle value", with: 555
    fill_in "Cost", with: 6000123

    click_on "Save"

    assert_text "Battlemech was successfully created"
    click_on "Back"
  end

  test "updating a Battlemech" do
    visit battlemechs_url
    click_on "Edit", match: :first

    click_on "Save"

    assert_text "Battlemech was successfully updated"
    click_on "Back"
  end

  test "destroying a Battlemech" do
    visit battlemechs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    #assert_text "Battlemech was successfully destroyed"
  end
end
