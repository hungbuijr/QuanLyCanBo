require "application_system_test_case"

class MonHocsTest < ApplicationSystemTestCase
  setup do
    @mon_hoc = mon_hocs(:one)
  end

  test "visiting the index" do
    visit mon_hocs_url
    assert_selector "h1", text: "Mon Hocs"
  end

  test "creating a Mon hoc" do
    visit mon_hocs_url
    click_on "New Mon Hoc"

    fill_in "Description", with: @mon_hoc.description
    check "Enabled" if @mon_hoc.enabled
    fill_in "Name", with: @mon_hoc.name
    click_on "Create Mon hoc"

    assert_text "Mon hoc was successfully created"
    click_on "Back"
  end

  test "updating a Mon hoc" do
    visit mon_hocs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @mon_hoc.description
    check "Enabled" if @mon_hoc.enabled
    fill_in "Name", with: @mon_hoc.name
    click_on "Update Mon hoc"

    assert_text "Mon hoc was successfully updated"
    click_on "Back"
  end

  test "destroying a Mon hoc" do
    visit mon_hocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mon hoc was successfully destroyed"
  end
end
