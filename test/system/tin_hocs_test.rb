require "application_system_test_case"

class TinHocsTest < ApplicationSystemTestCase
  setup do
    @tin_hoc = tin_hocs(:one)
  end

  test "visiting the index" do
    visit tin_hocs_url
    assert_selector "h1", text: "Tin Hocs"
  end

  test "creating a Tin hoc" do
    visit tin_hocs_url
    click_on "New Tin Hoc"

    fill_in "Description", with: @tin_hoc.description
    check "Enabled" if @tin_hoc.enabled
    fill_in "Name", with: @tin_hoc.name
    click_on "Create Tin hoc"

    assert_text "Tin hoc was successfully created"
    click_on "Back"
  end

  test "updating a Tin hoc" do
    visit tin_hocs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tin_hoc.description
    check "Enabled" if @tin_hoc.enabled
    fill_in "Name", with: @tin_hoc.name
    click_on "Update Tin hoc"

    assert_text "Tin hoc was successfully updated"
    click_on "Back"
  end

  test "destroying a Tin hoc" do
    visit tin_hocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tin hoc was successfully destroyed"
  end
end
