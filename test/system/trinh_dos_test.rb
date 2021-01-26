require "application_system_test_case"

class TrinhDosTest < ApplicationSystemTestCase
  setup do
    @trinh_do = trinh_dos(:one)
  end

  test "visiting the index" do
    visit trinh_dos_url
    assert_selector "h1", text: "Trinh Dos"
  end

  test "creating a Trinh do" do
    visit trinh_dos_url
    click_on "New Trinh Do"

    fill_in "Description", with: @trinh_do.description
    check "Enabled" if @trinh_do.enabled
    fill_in "Name", with: @trinh_do.name
    click_on "Create Trinh do"

    assert_text "Trinh do was successfully created"
    click_on "Back"
  end

  test "updating a Trinh do" do
    visit trinh_dos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trinh_do.description
    check "Enabled" if @trinh_do.enabled
    fill_in "Name", with: @trinh_do.name
    click_on "Update Trinh do"

    assert_text "Trinh do was successfully updated"
    click_on "Back"
  end

  test "destroying a Trinh do" do
    visit trinh_dos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trinh do was successfully destroyed"
  end
end
