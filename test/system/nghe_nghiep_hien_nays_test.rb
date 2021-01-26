require "application_system_test_case"

class NgheNghiepHienNaysTest < ApplicationSystemTestCase
  setup do
    @nghe_nghiep_hien_nay = nghe_nghiep_hien_nays(:one)
  end

  test "visiting the index" do
    visit nghe_nghiep_hien_nays_url
    assert_selector "h1", text: "Nghe Nghiep Hien Nays"
  end

  test "creating a Nghe nghiep hien nay" do
    visit nghe_nghiep_hien_nays_url
    click_on "New Nghe Nghiep Hien Nay"

    fill_in "Description", with: @nghe_nghiep_hien_nay.description
    check "Enabled" if @nghe_nghiep_hien_nay.enabled
    fill_in "Name", with: @nghe_nghiep_hien_nay.name
    click_on "Create Nghe nghiep hien nay"

    assert_text "Nghe nghiep hien nay was successfully created"
    click_on "Back"
  end

  test "updating a Nghe nghiep hien nay" do
    visit nghe_nghiep_hien_nays_url
    click_on "Edit", match: :first

    fill_in "Description", with: @nghe_nghiep_hien_nay.description
    check "Enabled" if @nghe_nghiep_hien_nay.enabled
    fill_in "Name", with: @nghe_nghiep_hien_nay.name
    click_on "Update Nghe nghiep hien nay"

    assert_text "Nghe nghiep hien nay was successfully updated"
    click_on "Back"
  end

  test "destroying a Nghe nghiep hien nay" do
    visit nghe_nghiep_hien_nays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nghe nghiep hien nay was successfully destroyed"
  end
end
