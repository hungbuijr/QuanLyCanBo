require "application_system_test_case"

class NgheNghiepTruocKhiVaoDangsTest < ApplicationSystemTestCase
  setup do
    @nghe_nghiep_truoc_khi_vao_dang = nghe_nghiep_truoc_khi_vao_dangs(:one)
  end

  test "visiting the index" do
    visit nghe_nghiep_truoc_khi_vao_dangs_url
    assert_selector "h1", text: "Nghe Nghiep Truoc Khi Vao Dangs"
  end

  test "creating a Nghe nghiep truoc khi vao dang" do
    visit nghe_nghiep_truoc_khi_vao_dangs_url
    click_on "New Nghe Nghiep Truoc Khi Vao Dang"

    fill_in "Description", with: @nghe_nghiep_truoc_khi_vao_dang.description
    check "Enabled" if @nghe_nghiep_truoc_khi_vao_dang.enabled
    fill_in "Name", with: @nghe_nghiep_truoc_khi_vao_dang.name
    click_on "Create Nghe nghiep truoc khi vao dang"

    assert_text "Nghe nghiep truoc khi vao dang was successfully created"
    click_on "Back"
  end

  test "updating a Nghe nghiep truoc khi vao dang" do
    visit nghe_nghiep_truoc_khi_vao_dangs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @nghe_nghiep_truoc_khi_vao_dang.description
    check "Enabled" if @nghe_nghiep_truoc_khi_vao_dang.enabled
    fill_in "Name", with: @nghe_nghiep_truoc_khi_vao_dang.name
    click_on "Update Nghe nghiep truoc khi vao dang"

    assert_text "Nghe nghiep truoc khi vao dang was successfully updated"
    click_on "Back"
  end

  test "destroying a Nghe nghiep truoc khi vao dang" do
    visit nghe_nghiep_truoc_khi_vao_dangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nghe nghiep truoc khi vao dang was successfully destroyed"
  end
end
