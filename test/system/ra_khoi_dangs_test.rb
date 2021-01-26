require "application_system_test_case"

class RaKhoiDangsTest < ApplicationSystemTestCase
  setup do
    @ra_khoi_dang = ra_khoi_dangs(:one)
  end

  test "visiting the index" do
    visit ra_khoi_dangs_url
    assert_selector "h1", text: "Ra Khoi Dangs"
  end

  test "creating a Ra khoi dang" do
    visit ra_khoi_dangs_url
    click_on "New Ra Khoi Dang"

    fill_in "Description", with: @ra_khoi_dang.description
    check "Enabled" if @ra_khoi_dang.enabled
    fill_in "Hinh thuc ra khoi dang", with: @ra_khoi_dang.hinh_thuc_ra_khoi_dang
    fill_in "Name", with: @ra_khoi_dang.name
    fill_in "Ngay ra khoi dang", with: @ra_khoi_dang.ngay_ra_khoi_dang
    click_on "Create Ra khoi dang"

    assert_text "Ra khoi dang was successfully created"
    click_on "Back"
  end

  test "updating a Ra khoi dang" do
    visit ra_khoi_dangs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @ra_khoi_dang.description
    check "Enabled" if @ra_khoi_dang.enabled
    fill_in "Hinh thuc ra khoi dang", with: @ra_khoi_dang.hinh_thuc_ra_khoi_dang
    fill_in "Name", with: @ra_khoi_dang.name
    fill_in "Ngay ra khoi dang", with: @ra_khoi_dang.ngay_ra_khoi_dang
    click_on "Update Ra khoi dang"

    assert_text "Ra khoi dang was successfully updated"
    click_on "Back"
  end

  test "destroying a Ra khoi dang" do
    visit ra_khoi_dangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ra khoi dang was successfully destroyed"
  end
end
