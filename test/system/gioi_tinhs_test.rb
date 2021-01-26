require "application_system_test_case"

class GioiTinhsTest < ApplicationSystemTestCase
  setup do
    @gioi_tinh = gioi_tinhs(:one)
  end

  test "visiting the index" do
    visit gioi_tinhs_url
    assert_selector "h1", text: "Gioi Tinhs"
  end

  test "creating a Gioi tinh" do
    visit gioi_tinhs_url
    click_on "New Gioi Tinh"

    fill_in "Description", with: @gioi_tinh.description
    check "Enabled" if @gioi_tinh.enabled
    fill_in "Name", with: @gioi_tinh.name
    click_on "Create Gioi tinh"

    assert_text "Gioi tinh was successfully created"
    click_on "Back"
  end

  test "updating a Gioi tinh" do
    visit gioi_tinhs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @gioi_tinh.description
    check "Enabled" if @gioi_tinh.enabled
    fill_in "Name", with: @gioi_tinh.name
    click_on "Update Gioi tinh"

    assert_text "Gioi tinh was successfully updated"
    click_on "Back"
  end

  test "destroying a Gioi tinh" do
    visit gioi_tinhs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gioi tinh was successfully destroyed"
  end
end
