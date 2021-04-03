require "application_system_test_case"

class BoNhiemsTest < ApplicationSystemTestCase
  setup do
    @bo_nhiem = bo_nhiems(:one)
  end

  test "visiting the index" do
    visit bo_nhiems_url
    assert_selector "h1", text: "Bo Nhiems"
  end

  test "creating a Bo nhiem" do
    visit bo_nhiems_url
    click_on "New Bo Nhiem"

    click_on "Create Bo nhiem"

    assert_text "Bo nhiem was successfully created"
    click_on "Back"
  end

  test "updating a Bo nhiem" do
    visit bo_nhiems_url
    click_on "Edit", match: :first

    click_on "Update Bo nhiem"

    assert_text "Bo nhiem was successfully updated"
    click_on "Back"
  end

  test "destroying a Bo nhiem" do
    visit bo_nhiems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bo nhiem was successfully destroyed"
  end
end
