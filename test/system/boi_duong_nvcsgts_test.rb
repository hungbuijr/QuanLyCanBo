require "application_system_test_case"

class BoiDuongNvcsgtsTest < ApplicationSystemTestCase
  setup do
    @boi_duong_nvcsgt = boi_duong_nvcsgts(:one)
  end

  test "visiting the index" do
    visit boi_duong_nvcsgts_url
    assert_selector "h1", text: "Boi Duong Nvcsgts"
  end

  test "creating a Boi duong nvcsgt" do
    visit boi_duong_nvcsgts_url
    click_on "New Boi Duong Nvcsgt"

    fill_in "Description", with: @boi_duong_nvcsgt.description
    check "Enabled" if @boi_duong_nvcsgt.enabled
    fill_in "Name", with: @boi_duong_nvcsgt.name
    click_on "Create Boi duong nvcsgt"

    assert_text "Boi duong nvcsgt was successfully created"
    click_on "Back"
  end

  test "updating a Boi duong nvcsgt" do
    visit boi_duong_nvcsgts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @boi_duong_nvcsgt.description
    check "Enabled" if @boi_duong_nvcsgt.enabled
    fill_in "Name", with: @boi_duong_nvcsgt.name
    click_on "Update Boi duong nvcsgt"

    assert_text "Boi duong nvcsgt was successfully updated"
    click_on "Back"
  end

  test "destroying a Boi duong nvcsgt" do
    visit boi_duong_nvcsgts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boi duong nvcsgt was successfully destroyed"
  end
end
