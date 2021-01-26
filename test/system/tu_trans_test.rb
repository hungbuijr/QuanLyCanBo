require "application_system_test_case"

class TuTransTest < ApplicationSystemTestCase
  setup do
    @tu_tran = tu_trans(:one)
  end

  test "visiting the index" do
    visit tu_trans_url
    assert_selector "h1", text: "Tu Trans"
  end

  test "creating a Tu tran" do
    visit tu_trans_url
    click_on "New Tu Tran"

    fill_in "Description", with: @tu_tran.description
    check "Enabled" if @tu_tran.enabled
    fill_in "Ly do", with: @tu_tran.ly_do
    fill_in "Name", with: @tu_tran.name
    fill_in "Ngay tu tran", with: @tu_tran.ngay_tu_tran
    click_on "Create Tu tran"

    assert_text "Tu tran was successfully created"
    click_on "Back"
  end

  test "updating a Tu tran" do
    visit tu_trans_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tu_tran.description
    check "Enabled" if @tu_tran.enabled
    fill_in "Ly do", with: @tu_tran.ly_do
    fill_in "Name", with: @tu_tran.name
    fill_in "Ngay tu tran", with: @tu_tran.ngay_tu_tran
    click_on "Update Tu tran"

    assert_text "Tu tran was successfully updated"
    click_on "Back"
  end

  test "destroying a Tu tran" do
    visit tu_trans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tu tran was successfully destroyed"
  end
end
