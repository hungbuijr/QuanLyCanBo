require "application_system_test_case"

class TrinhDoLyLuansTest < ApplicationSystemTestCase
  setup do
    @trinh_do_ly_luan = trinh_do_ly_luans(:one)
  end

  test "visiting the index" do
    visit trinh_do_ly_luans_url
    assert_selector "h1", text: "Trinh Do Ly Luans"
  end

  test "creating a Trinh do ly luan" do
    visit trinh_do_ly_luans_url
    click_on "New Trinh Do Ly Luan"

    fill_in "Description", with: @trinh_do_ly_luan.description
    check "Enabled" if @trinh_do_ly_luan.enabled
    fill_in "Name", with: @trinh_do_ly_luan.name
    click_on "Create Trinh do ly luan"

    assert_text "Trinh do ly luan was successfully created"
    click_on "Back"
  end

  test "updating a Trinh do ly luan" do
    visit trinh_do_ly_luans_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trinh_do_ly_luan.description
    check "Enabled" if @trinh_do_ly_luan.enabled
    fill_in "Name", with: @trinh_do_ly_luan.name
    click_on "Update Trinh do ly luan"

    assert_text "Trinh do ly luan was successfully updated"
    click_on "Back"
  end

  test "destroying a Trinh do ly luan" do
    visit trinh_do_ly_luans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trinh do ly luan was successfully destroyed"
  end
end
