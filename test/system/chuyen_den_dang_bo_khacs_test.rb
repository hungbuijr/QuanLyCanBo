require "application_system_test_case"

class ChuyenDenDangBoKhacsTest < ApplicationSystemTestCase
  setup do
    @chuyen_den_dang_bo_khac = chuyen_den_dang_bo_khacs(:one)
  end

  test "visiting the index" do
    visit chuyen_den_dang_bo_khacs_url
    assert_selector "h1", text: "Chuyen Den Dang Bo Khacs"
  end

  test "creating a Chuyen den dang bo khac" do
    visit chuyen_den_dang_bo_khacs_url
    click_on "New Chuyen Den Dang Bo Khac"

    fill_in "Description", with: @chuyen_den_dang_bo_khac.description
    check "Enabled" if @chuyen_den_dang_bo_khac.enabled
    fill_in "Name", with: @chuyen_den_dang_bo_khac.name
    fill_in "Ngay chuyen di", with: @chuyen_den_dang_bo_khac.ngay_chuyen_di
    click_on "Create Chuyen den dang bo khac"

    assert_text "Chuyen den dang bo khac was successfully created"
    click_on "Back"
  end

  test "updating a Chuyen den dang bo khac" do
    visit chuyen_den_dang_bo_khacs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chuyen_den_dang_bo_khac.description
    check "Enabled" if @chuyen_den_dang_bo_khac.enabled
    fill_in "Name", with: @chuyen_den_dang_bo_khac.name
    fill_in "Ngay chuyen di", with: @chuyen_den_dang_bo_khac.ngay_chuyen_di
    click_on "Update Chuyen den dang bo khac"

    assert_text "Chuyen den dang bo khac was successfully updated"
    click_on "Back"
  end

  test "destroying a Chuyen den dang bo khac" do
    visit chuyen_den_dang_bo_khacs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chuyen den dang bo khac was successfully destroyed"
  end
end
