require "application_system_test_case"

class ChucVusTest < ApplicationSystemTestCase
  setup do
    @chuc_vu = chuc_vus(:one)
  end

  test "visiting the index" do
    visit chuc_vus_url
    assert_selector "h1", text: "Chuc Vus"
  end

  test "creating a Chuc vu" do
    visit chuc_vus_url
    click_on "New Chuc Vu"

    fill_in "Description", with: @chuc_vu.description
    check "Enabled" if @chuc_vu.enabled
    fill_in "Name", with: @chuc_vu.name
    click_on "Create Chuc vu"

    assert_text "Chuc vu was successfully created"
    click_on "Back"
  end

  test "updating a Chuc vu" do
    visit chuc_vus_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chuc_vu.description
    check "Enabled" if @chuc_vu.enabled
    fill_in "Name", with: @chuc_vu.name
    click_on "Update Chuc vu"

    assert_text "Chuc vu was successfully updated"
    click_on "Back"
  end

  test "destroying a Chuc vu" do
    visit chuc_vus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chuc vu was successfully destroyed"
  end
end
