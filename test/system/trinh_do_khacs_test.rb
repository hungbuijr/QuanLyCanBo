require "application_system_test_case"

class TrinhDoKhacsTest < ApplicationSystemTestCase
  setup do
    @trinh_do_khac = trinh_do_khacs(:one)
  end

  test "visiting the index" do
    visit trinh_do_khacs_url
    assert_selector "h1", text: "Trinh Do Khacs"
  end

  test "creating a Trinh do khac" do
    visit trinh_do_khacs_url
    click_on "New Trinh Do Khac"

    fill_in "Description", with: @trinh_do_khac.description
    check "Enabled" if @trinh_do_khac.enabled
    fill_in "Name", with: @trinh_do_khac.name
    click_on "Create Trinh do khac"

    assert_text "Trinh do khac was successfully created"
    click_on "Back"
  end

  test "updating a Trinh do khac" do
    visit trinh_do_khacs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trinh_do_khac.description
    check "Enabled" if @trinh_do_khac.enabled
    fill_in "Name", with: @trinh_do_khac.name
    click_on "Update Trinh do khac"

    assert_text "Trinh do khac was successfully updated"
    click_on "Back"
  end

  test "destroying a Trinh do khac" do
    visit trinh_do_khacs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trinh do khac was successfully destroyed"
  end
end
