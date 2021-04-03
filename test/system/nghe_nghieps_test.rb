require "application_system_test_case"

class NgheNghiepsTest < ApplicationSystemTestCase
  setup do
    @nghe_nghiep = nghe_nghieps(:one)
  end

  test "visiting the index" do
    visit nghe_nghieps_url
    assert_selector "h1", text: "Nghe Nghieps"
  end

  test "creating a Nghe nghiep" do
    visit nghe_nghieps_url
    click_on "New Nghe Nghiep"

    fill_in "Description", with: @nghe_nghiep.description
    fill_in "Name", with: @nghe_nghiep.name
    click_on "Create Nghe nghiep"

    assert_text "Nghe nghiep was successfully created"
    click_on "Back"
  end

  test "updating a Nghe nghiep" do
    visit nghe_nghieps_url
    click_on "Edit", match: :first

    fill_in "Description", with: @nghe_nghiep.description
    fill_in "Name", with: @nghe_nghiep.name
    click_on "Update Nghe nghiep"

    assert_text "Nghe nghiep was successfully updated"
    click_on "Back"
  end

  test "destroying a Nghe nghiep" do
    visit nghe_nghieps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nghe nghiep was successfully destroyed"
  end
end
