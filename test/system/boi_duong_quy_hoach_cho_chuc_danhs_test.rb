require "application_system_test_case"

class BoiDuongQuyHoachChoChucDanhsTest < ApplicationSystemTestCase
  setup do
    @boi_duong_quy_hoach_cho_chuc_danh = boi_duong_quy_hoach_cho_chuc_danhs(:one)
  end

  test "visiting the index" do
    visit boi_duong_quy_hoach_cho_chuc_danhs_url
    assert_selector "h1", text: "Boi Duong Quy Hoach Cho Chuc Danhs"
  end

  test "creating a Boi duong quy hoach cho chuc danh" do
    visit boi_duong_quy_hoach_cho_chuc_danhs_url
    click_on "New Boi Duong Quy Hoach Cho Chuc Danh"

    fill_in "Description", with: @boi_duong_quy_hoach_cho_chuc_danh.description
    check "Enabled" if @boi_duong_quy_hoach_cho_chuc_danh.enabled
    fill_in "Name", with: @boi_duong_quy_hoach_cho_chuc_danh.name
    click_on "Create Boi duong quy hoach cho chuc danh"

    assert_text "Boi duong quy hoach cho chuc danh was successfully created"
    click_on "Back"
  end

  test "updating a Boi duong quy hoach cho chuc danh" do
    visit boi_duong_quy_hoach_cho_chuc_danhs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @boi_duong_quy_hoach_cho_chuc_danh.description
    check "Enabled" if @boi_duong_quy_hoach_cho_chuc_danh.enabled
    fill_in "Name", with: @boi_duong_quy_hoach_cho_chuc_danh.name
    click_on "Update Boi duong quy hoach cho chuc danh"

    assert_text "Boi duong quy hoach cho chuc danh was successfully updated"
    click_on "Back"
  end

  test "destroying a Boi duong quy hoach cho chuc danh" do
    visit boi_duong_quy_hoach_cho_chuc_danhs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boi duong quy hoach cho chuc danh was successfully destroyed"
  end
end
