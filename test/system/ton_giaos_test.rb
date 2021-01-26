require "application_system_test_case"

class TonGiaosTest < ApplicationSystemTestCase
  setup do
    @ton_giao = ton_giaos(:one)
  end

  test "visiting the index" do
    visit ton_giaos_url
    assert_selector "h1", text: "Ton Giaos"
  end

  test "creating a Ton giao" do
    visit ton_giaos_url
    click_on "New Ton Giao"

    fill_in "Description", with: @ton_giao.description
    check "Enabled" if @ton_giao.enabled
    fill_in "Name", with: @ton_giao.name
    click_on "Create Ton giao"

    assert_text "Ton giao was successfully created"
    click_on "Back"
  end

  test "updating a Ton giao" do
    visit ton_giaos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @ton_giao.description
    check "Enabled" if @ton_giao.enabled
    fill_in "Name", with: @ton_giao.name
    click_on "Update Ton giao"

    assert_text "Ton giao was successfully updated"
    click_on "Back"
  end

  test "destroying a Ton giao" do
    visit ton_giaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ton giao was successfully destroyed"
  end
end
