require "application_system_test_case"

class BoiDuongQpansTest < ApplicationSystemTestCase
  setup do
    @boi_duong_qpan = boi_duong_qpans(:one)
  end

  test "visiting the index" do
    visit boi_duong_qpans_url
    assert_selector "h1", text: "Boi Duong Qpans"
  end

  test "creating a Boi duong qpan" do
    visit boi_duong_qpans_url
    click_on "New Boi Duong Qpan"

    fill_in "Description", with: @boi_duong_qpan.description
    check "Enabled" if @boi_duong_qpan.enabled
    fill_in "Name", with: @boi_duong_qpan.name
    click_on "Create Boi duong qpan"

    assert_text "Boi duong qpan was successfully created"
    click_on "Back"
  end

  test "updating a Boi duong qpan" do
    visit boi_duong_qpans_url
    click_on "Edit", match: :first

    fill_in "Description", with: @boi_duong_qpan.description
    check "Enabled" if @boi_duong_qpan.enabled
    fill_in "Name", with: @boi_duong_qpan.name
    click_on "Update Boi duong qpan"

    assert_text "Boi duong qpan was successfully updated"
    click_on "Back"
  end

  test "destroying a Boi duong qpan" do
    visit boi_duong_qpans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boi duong qpan was successfully destroyed"
  end
end
