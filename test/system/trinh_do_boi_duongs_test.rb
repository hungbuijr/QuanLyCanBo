require "application_system_test_case"

class TrinhDoBoiDuongsTest < ApplicationSystemTestCase
  setup do
    @trinh_do_boi_duong = trinh_do_boi_duongs(:one)
  end

  test "visiting the index" do
    visit trinh_do_boi_duongs_url
    assert_selector "h1", text: "Trinh Do Boi Duongs"
  end

  test "creating a Trinh do boi duong" do
    visit trinh_do_boi_duongs_url
    click_on "New Trinh Do Boi Duong"

    fill_in "Description", with: @trinh_do_boi_duong.description
    check "Enabled" if @trinh_do_boi_duong.enabled
    fill_in "Name", with: @trinh_do_boi_duong.name
    click_on "Create Trinh do boi duong"

    assert_text "Trinh do boi duong was successfully created"
    click_on "Back"
  end

  test "updating a Trinh do boi duong" do
    visit trinh_do_boi_duongs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trinh_do_boi_duong.description
    check "Enabled" if @trinh_do_boi_duong.enabled
    fill_in "Name", with: @trinh_do_boi_duong.name
    click_on "Update Trinh do boi duong"

    assert_text "Trinh do boi duong was successfully updated"
    click_on "Back"
  end

  test "destroying a Trinh do boi duong" do
    visit trinh_do_boi_duongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trinh do boi duong was successfully destroyed"
  end
end
