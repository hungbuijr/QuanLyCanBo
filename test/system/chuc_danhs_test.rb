require "application_system_test_case"

class ChucDanhsTest < ApplicationSystemTestCase
  setup do
    @chuc_danh = chuc_danhs(:one)
  end

  test "visiting the index" do
    visit chuc_danhs_url
    assert_selector "h1", text: "Chuc Danhs"
  end

  test "creating a Chuc danh" do
    visit chuc_danhs_url
    click_on "New Chuc Danh"

    fill_in "Description", with: @chuc_danh.description
    check "Enabled" if @chuc_danh.enabled
    fill_in "Name", with: @chuc_danh.name
    click_on "Create Chuc danh"

    assert_text "Chuc danh was successfully created"
    click_on "Back"
  end

  test "updating a Chuc danh" do
    visit chuc_danhs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chuc_danh.description
    check "Enabled" if @chuc_danh.enabled
    fill_in "Name", with: @chuc_danh.name
    click_on "Update Chuc danh"

    assert_text "Chuc danh was successfully updated"
    click_on "Back"
  end

  test "destroying a Chuc danh" do
    visit chuc_danhs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chuc danh was successfully destroyed"
  end
end
