require "application_system_test_case"

class TrinhDoCanBosTest < ApplicationSystemTestCase
  setup do
    @trinh_do_can_bo = trinh_do_can_bos(:one)
  end

  test "visiting the index" do
    visit trinh_do_can_bos_url
    assert_selector "h1", text: "Trinh Do Can Bos"
  end

  test "creating a Trinh do can bo" do
    visit trinh_do_can_bos_url
    click_on "New Trinh Do Can Bo"

    click_on "Create Trinh do can bo"

    assert_text "Trinh do can bo was successfully created"
    click_on "Back"
  end

  test "updating a Trinh do can bo" do
    visit trinh_do_can_bos_url
    click_on "Edit", match: :first

    click_on "Update Trinh do can bo"

    assert_text "Trinh do can bo was successfully updated"
    click_on "Back"
  end

  test "destroying a Trinh do can bo" do
    visit trinh_do_can_bos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trinh do can bo was successfully destroyed"
  end
end
