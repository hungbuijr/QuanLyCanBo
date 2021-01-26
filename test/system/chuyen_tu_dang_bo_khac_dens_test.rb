require "application_system_test_case"

class ChuyenTuDangBoKhacDensTest < ApplicationSystemTestCase
  setup do
    @chuyen_tu_dang_bo_khac_den = chuyen_tu_dang_bo_khac_dens(:one)
  end

  test "visiting the index" do
    visit chuyen_tu_dang_bo_khac_dens_url
    assert_selector "h1", text: "Chuyen Tu Dang Bo Khac Dens"
  end

  test "creating a Chuyen tu dang bo khac den" do
    visit chuyen_tu_dang_bo_khac_dens_url
    click_on "New Chuyen Tu Dang Bo Khac Den"

    fill_in "Description", with: @chuyen_tu_dang_bo_khac_den.description
    check "Enabled" if @chuyen_tu_dang_bo_khac_den.enabled
    fill_in "Name", with: @chuyen_tu_dang_bo_khac_den.name
    fill_in "Ngay chuyen den", with: @chuyen_tu_dang_bo_khac_den.ngay_chuyen_den
    click_on "Create Chuyen tu dang bo khac den"

    assert_text "Chuyen tu dang bo khac den was successfully created"
    click_on "Back"
  end

  test "updating a Chuyen tu dang bo khac den" do
    visit chuyen_tu_dang_bo_khac_dens_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chuyen_tu_dang_bo_khac_den.description
    check "Enabled" if @chuyen_tu_dang_bo_khac_den.enabled
    fill_in "Name", with: @chuyen_tu_dang_bo_khac_den.name
    fill_in "Ngay chuyen den", with: @chuyen_tu_dang_bo_khac_den.ngay_chuyen_den
    click_on "Update Chuyen tu dang bo khac den"

    assert_text "Chuyen tu dang bo khac den was successfully updated"
    click_on "Back"
  end

  test "destroying a Chuyen tu dang bo khac den" do
    visit chuyen_tu_dang_bo_khac_dens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chuyen tu dang bo khac den was successfully destroyed"
  end
end
