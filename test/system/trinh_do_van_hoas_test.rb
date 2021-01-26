require "application_system_test_case"

class TrinhDoVanHoasTest < ApplicationSystemTestCase
  setup do
    @trinh_do_van_hoa = trinh_do_van_hoas(:one)
  end

  test "visiting the index" do
    visit trinh_do_van_hoas_url
    assert_selector "h1", text: "Trinh Do Van Hoas"
  end

  test "creating a Trinh do van hoa" do
    visit trinh_do_van_hoas_url
    click_on "New Trinh Do Van Hoa"

    fill_in "Description", with: @trinh_do_van_hoa.description
    check "Enabled" if @trinh_do_van_hoa.enabled
    fill_in "Name", with: @trinh_do_van_hoa.name
    click_on "Create Trinh do van hoa"

    assert_text "Trinh do van hoa was successfully created"
    click_on "Back"
  end

  test "updating a Trinh do van hoa" do
    visit trinh_do_van_hoas_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trinh_do_van_hoa.description
    check "Enabled" if @trinh_do_van_hoa.enabled
    fill_in "Name", with: @trinh_do_van_hoa.name
    click_on "Update Trinh do van hoa"

    assert_text "Trinh do van hoa was successfully updated"
    click_on "Back"
  end

  test "destroying a Trinh do van hoa" do
    visit trinh_do_van_hoas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trinh do van hoa was successfully destroyed"
  end
end
