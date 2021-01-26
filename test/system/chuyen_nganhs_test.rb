require "application_system_test_case"

class ChuyenNganhsTest < ApplicationSystemTestCase
  setup do
    @chuyen_nganh = chuyen_nganhs(:one)
  end

  test "visiting the index" do
    visit chuyen_nganhs_url
    assert_selector "h1", text: "Chuyen Nganhs"
  end

  test "creating a Chuyen nganh" do
    visit chuyen_nganhs_url
    click_on "New Chuyen Nganh"

    fill_in "Description", with: @chuyen_nganh.description
    check "Enabled" if @chuyen_nganh.enabled
    fill_in "Name", with: @chuyen_nganh.name
    click_on "Create Chuyen nganh"

    assert_text "Chuyen nganh was successfully created"
    click_on "Back"
  end

  test "updating a Chuyen nganh" do
    visit chuyen_nganhs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chuyen_nganh.description
    check "Enabled" if @chuyen_nganh.enabled
    fill_in "Name", with: @chuyen_nganh.name
    click_on "Update Chuyen nganh"

    assert_text "Chuyen nganh was successfully updated"
    click_on "Back"
  end

  test "destroying a Chuyen nganh" do
    visit chuyen_nganhs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chuyen nganh was successfully destroyed"
  end
end
