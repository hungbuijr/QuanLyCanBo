require "application_system_test_case"

class ChucDanhBoiDuongsTest < ApplicationSystemTestCase
  setup do
    @chuc_danh_boi_duong = chuc_danh_boi_duongs(:one)
  end

  test "visiting the index" do
    visit chuc_danh_boi_duongs_url
    assert_selector "h1", text: "Chuc Danh Boi Duongs"
  end

  test "creating a Chuc danh boi duong" do
    visit chuc_danh_boi_duongs_url
    click_on "New Chuc Danh Boi Duong"

    fill_in "Description", with: @chuc_danh_boi_duong.description
    check "Enabled" if @chuc_danh_boi_duong.enabled
    fill_in "Name", with: @chuc_danh_boi_duong.name
    click_on "Create Chuc danh boi duong"

    assert_text "Chuc danh boi duong was successfully created"
    click_on "Back"
  end

  test "updating a Chuc danh boi duong" do
    visit chuc_danh_boi_duongs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chuc_danh_boi_duong.description
    check "Enabled" if @chuc_danh_boi_duong.enabled
    fill_in "Name", with: @chuc_danh_boi_duong.name
    click_on "Update Chuc danh boi duong"

    assert_text "Chuc danh boi duong was successfully updated"
    click_on "Back"
  end

  test "destroying a Chuc danh boi duong" do
    visit chuc_danh_boi_duongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chuc danh boi duong was successfully destroyed"
  end
end
