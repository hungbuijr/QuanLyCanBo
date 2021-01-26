require "application_system_test_case"

class TrinhDoTheoMonHocsTest < ApplicationSystemTestCase
  setup do
    @trinh_do_theo_mon_hoc = trinh_do_theo_mon_hocs(:one)
  end

  test "visiting the index" do
    visit trinh_do_theo_mon_hocs_url
    assert_selector "h1", text: "Trinh Do Theo Mon Hocs"
  end

  test "creating a Trinh do theo mon hoc" do
    visit trinh_do_theo_mon_hocs_url
    click_on "New Trinh Do Theo Mon Hoc"

    fill_in "Description", with: @trinh_do_theo_mon_hoc.description
    check "Enabled" if @trinh_do_theo_mon_hoc.enabled
    fill_in "Name", with: @trinh_do_theo_mon_hoc.name
    click_on "Create Trinh do theo mon hoc"

    assert_text "Trinh do theo mon hoc was successfully created"
    click_on "Back"
  end

  test "updating a Trinh do theo mon hoc" do
    visit trinh_do_theo_mon_hocs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trinh_do_theo_mon_hoc.description
    check "Enabled" if @trinh_do_theo_mon_hoc.enabled
    fill_in "Name", with: @trinh_do_theo_mon_hoc.name
    click_on "Update Trinh do theo mon hoc"

    assert_text "Trinh do theo mon hoc was successfully updated"
    click_on "Back"
  end

  test "destroying a Trinh do theo mon hoc" do
    visit trinh_do_theo_mon_hocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trinh do theo mon hoc was successfully destroyed"
  end
end
