require "application_system_test_case"

class CanBosTest < ApplicationSystemTestCase
  setup do
    @can_bo = can_bos(:one)
  end

  test "visiting the index" do
    visit can_bos_url
    assert_selector "h1", text: "Can Bos"
  end

  test "creating a Can bo" do
    visit can_bos_url
    click_on "New Can Bo"

    fill_in "Date of birth", with: @can_bo.date_of_birth
    fill_in "Name", with: @can_bo.name
    click_on "Create Can bo"

    assert_text "Can bo was successfully created"
    click_on "Back"
  end

  test "updating a Can bo" do
    visit can_bos_url
    click_on "Edit", match: :first

    fill_in "Date of birth", with: @can_bo.date_of_birth
    fill_in "Name", with: @can_bo.name
    click_on "Update Can bo"

    assert_text "Can bo was successfully updated"
    click_on "Back"
  end

  test "destroying a Can bo" do
    visit can_bos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Can bo was successfully destroyed"
  end
end
