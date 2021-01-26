require "application_system_test_case"

class QueQuansTest < ApplicationSystemTestCase
  setup do
    @que_quan = que_quans(:one)
  end

  test "visiting the index" do
    visit que_quans_url
    assert_selector "h1", text: "Que Quans"
  end

  test "creating a Que quan" do
    visit que_quans_url
    click_on "New Que Quan"

    fill_in "Description", with: @que_quan.description
    check "Enabled" if @que_quan.enabled
    fill_in "Name", with: @que_quan.name
    click_on "Create Que quan"

    assert_text "Que quan was successfully created"
    click_on "Back"
  end

  test "updating a Que quan" do
    visit que_quans_url
    click_on "Edit", match: :first

    fill_in "Description", with: @que_quan.description
    check "Enabled" if @que_quan.enabled
    fill_in "Name", with: @que_quan.name
    click_on "Update Que quan"

    assert_text "Que quan was successfully updated"
    click_on "Back"
  end

  test "destroying a Que quan" do
    visit que_quans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Que quan was successfully destroyed"
  end
end
