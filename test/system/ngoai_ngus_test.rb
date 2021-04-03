require "application_system_test_case"

class NgoaiNgusTest < ApplicationSystemTestCase
  setup do
    @ngoai_ngu = ngoai_ngus(:one)
  end

  test "visiting the index" do
    visit ngoai_ngus_url
    assert_selector "h1", text: "Ngoai Ngus"
  end

  test "creating a Ngoai ngu" do
    visit ngoai_ngus_url
    click_on "New Ngoai Ngu"

    fill_in "Cap do", with: @ngoai_ngu.cap_do
    fill_in "Description", with: @ngoai_ngu.description
    check "Enabled" if @ngoai_ngu.enabled
    fill_in "Name", with: @ngoai_ngu.name
    click_on "Create Ngoai ngu"

    assert_text "Ngoai ngu was successfully created"
    click_on "Back"
  end

  test "updating a Ngoai ngu" do
    visit ngoai_ngus_url
    click_on "Edit", match: :first

    fill_in "Cap do", with: @ngoai_ngu.cap_do
    fill_in "Description", with: @ngoai_ngu.description
    check "Enabled" if @ngoai_ngu.enabled
    fill_in "Name", with: @ngoai_ngu.name
    click_on "Update Ngoai ngu"

    assert_text "Ngoai ngu was successfully updated"
    click_on "Back"
  end

  test "destroying a Ngoai ngu" do
    visit ngoai_ngus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ngoai ngu was successfully destroyed"
  end
end
