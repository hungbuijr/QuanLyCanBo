require "application_system_test_case"

class ChucDanhDaQuyHoachesTest < ApplicationSystemTestCase
  setup do
    @chuc_danh_da_quy_hoach = chuc_danh_da_quy_hoaches(:one)
  end

  test "visiting the index" do
    visit chuc_danh_da_quy_hoaches_url
    assert_selector "h1", text: "Chuc Danh Da Quy Hoaches"
  end

  test "creating a Chuc danh da quy hoach" do
    visit chuc_danh_da_quy_hoaches_url
    click_on "New Chuc Danh Da Quy Hoach"

    fill_in "Description", with: @chuc_danh_da_quy_hoach.description
    check "Enabled" if @chuc_danh_da_quy_hoach.enabled
    fill_in "Name", with: @chuc_danh_da_quy_hoach.name
    click_on "Create Chuc danh da quy hoach"

    assert_text "Chuc danh da quy hoach was successfully created"
    click_on "Back"
  end

  test "updating a Chuc danh da quy hoach" do
    visit chuc_danh_da_quy_hoaches_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chuc_danh_da_quy_hoach.description
    check "Enabled" if @chuc_danh_da_quy_hoach.enabled
    fill_in "Name", with: @chuc_danh_da_quy_hoach.name
    click_on "Update Chuc danh da quy hoach"

    assert_text "Chuc danh da quy hoach was successfully updated"
    click_on "Back"
  end

  test "destroying a Chuc danh da quy hoach" do
    visit chuc_danh_da_quy_hoaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chuc danh da quy hoach was successfully destroyed"
  end
end
