require "application_system_test_case"

class DangViensTest < ApplicationSystemTestCase
  setup do
    @dang_vien = dang_viens(:one)
  end

  test "visiting the index" do
    visit dang_viens_url
    assert_selector "h1", text: "Dang Viens"
  end

  test "creating a Dang vien" do
    visit dang_viens_url
    click_on "New Dang Vien"

    fill_in "Description", with: @dang_vien.description
    check "Enabled" if @dang_vien.enabled
    fill_in "Name", with: @dang_vien.name
    fill_in "So the dang", with: @dang_vien.so_the_dang
    click_on "Create Dang vien"

    assert_text "Dang vien was successfully created"
    click_on "Back"
  end

  test "updating a Dang vien" do
    visit dang_viens_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dang_vien.description
    check "Enabled" if @dang_vien.enabled
    fill_in "Name", with: @dang_vien.name
    fill_in "So the dang", with: @dang_vien.so_the_dang
    click_on "Update Dang vien"

    assert_text "Dang vien was successfully updated"
    click_on "Back"
  end

  test "destroying a Dang vien" do
    visit dang_viens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dang vien was successfully destroyed"
  end
end
