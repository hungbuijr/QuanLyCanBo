require "application_system_test_case"

class QuaTrinhCongTacsTest < ApplicationSystemTestCase
  setup do
    @qua_trinh_cong_tac = qua_trinh_cong_tacs(:one)
  end

  test "visiting the index" do
    visit qua_trinh_cong_tacs_url
    assert_selector "h1", text: "Qua Trinh Cong Tacs"
  end

  test "creating a Qua trinh cong tac" do
    visit qua_trinh_cong_tacs_url
    click_on "New Qua Trinh Cong Tac"

    fill_in "Description", with: @qua_trinh_cong_tac.description
    check "Enabled" if @qua_trinh_cong_tac.enabled
    fill_in "Name", with: @qua_trinh_cong_tac.name
    click_on "Create Qua trinh cong tac"

    assert_text "Qua trinh cong tac was successfully created"
    click_on "Back"
  end

  test "updating a Qua trinh cong tac" do
    visit qua_trinh_cong_tacs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @qua_trinh_cong_tac.description
    check "Enabled" if @qua_trinh_cong_tac.enabled
    fill_in "Name", with: @qua_trinh_cong_tac.name
    click_on "Update Qua trinh cong tac"

    assert_text "Qua trinh cong tac was successfully updated"
    click_on "Back"
  end

  test "destroying a Qua trinh cong tac" do
    visit qua_trinh_cong_tacs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qua trinh cong tac was successfully destroyed"
  end
end
