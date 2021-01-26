require "application_system_test_case"

class DanTocsTest < ApplicationSystemTestCase
  setup do
    @dan_toc = dan_tocs(:one)
  end

  test "visiting the index" do
    visit dan_tocs_url
    assert_selector "h1", text: "Dan Tocs"
  end

  test "creating a Dan toc" do
    visit dan_tocs_url
    click_on "New Dan Toc"

    fill_in "Description", with: @dan_toc.description
    check "Enabled" if @dan_toc.enabled
    fill_in "Name", with: @dan_toc.name
    click_on "Create Dan toc"

    assert_text "Dan toc was successfully created"
    click_on "Back"
  end

  test "updating a Dan toc" do
    visit dan_tocs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dan_toc.description
    check "Enabled" if @dan_toc.enabled
    fill_in "Name", with: @dan_toc.name
    click_on "Update Dan toc"

    assert_text "Dan toc was successfully updated"
    click_on "Back"
  end

  test "destroying a Dan toc" do
    visit dan_tocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dan toc was successfully destroyed"
  end
end
