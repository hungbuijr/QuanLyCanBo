require "application_system_test_case"

class ChuyenMonNghiepVusTest < ApplicationSystemTestCase
  setup do
    @chuyen_mon_nghiep_vu = chuyen_mon_nghiep_vus(:one)
  end

  test "visiting the index" do
    visit chuyen_mon_nghiep_vus_url
    assert_selector "h1", text: "Chuyen Mon Nghiep Vus"
  end

  test "creating a Chuyen mon nghiep vu" do
    visit chuyen_mon_nghiep_vus_url
    click_on "New Chuyen Mon Nghiep Vu"

    fill_in "Description", with: @chuyen_mon_nghiep_vu.description
    check "Enabled" if @chuyen_mon_nghiep_vu.enabled
    fill_in "Name", with: @chuyen_mon_nghiep_vu.name
    click_on "Create Chuyen mon nghiep vu"

    assert_text "Chuyen mon nghiep vu was successfully created"
    click_on "Back"
  end

  test "updating a Chuyen mon nghiep vu" do
    visit chuyen_mon_nghiep_vus_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chuyen_mon_nghiep_vu.description
    check "Enabled" if @chuyen_mon_nghiep_vu.enabled
    fill_in "Name", with: @chuyen_mon_nghiep_vu.name
    click_on "Update Chuyen mon nghiep vu"

    assert_text "Chuyen mon nghiep vu was successfully updated"
    click_on "Back"
  end

  test "destroying a Chuyen mon nghiep vu" do
    visit chuyen_mon_nghiep_vus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chuyen mon nghiep vu was successfully destroyed"
  end
end
