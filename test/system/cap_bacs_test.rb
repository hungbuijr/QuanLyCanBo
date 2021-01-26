require "application_system_test_case"

class CapBacsTest < ApplicationSystemTestCase
  setup do
    @cap_bac = cap_bacs(:one)
  end

  test "visiting the index" do
    visit cap_bacs_url
    assert_selector "h1", text: "Cap Bacs"
  end

  test "creating a Cap bac" do
    visit cap_bacs_url
    click_on "New Cap Bac"

    fill_in "Description", with: @cap_bac.description
    check "Enabled" if @cap_bac.enabled
    fill_in "Name", with: @cap_bac.name
    click_on "Create Cap bac"

    assert_text "Cap bac was successfully created"
    click_on "Back"
  end

  test "updating a Cap bac" do
    visit cap_bacs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cap_bac.description
    check "Enabled" if @cap_bac.enabled
    fill_in "Name", with: @cap_bac.name
    click_on "Update Cap bac"

    assert_text "Cap bac was successfully updated"
    click_on "Back"
  end

  test "destroying a Cap bac" do
    visit cap_bacs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cap bac was successfully destroyed"
  end
end
