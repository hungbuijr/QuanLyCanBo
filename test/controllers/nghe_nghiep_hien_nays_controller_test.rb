require 'test_helper'

class NgheNghiepHienNaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nghe_nghiep_hien_nay = nghe_nghiep_hien_nays(:one)
  end

  test "should get index" do
    get nghe_nghiep_hien_nays_url
    assert_response :success
  end

  test "should get new" do
    get new_nghe_nghiep_hien_nay_url
    assert_response :success
  end

  test "should create nghe_nghiep_hien_nay" do
    assert_difference('NgheNghiepHienNay.count') do
      post nghe_nghiep_hien_nays_url, params: { nghe_nghiep_hien_nay: { description: @nghe_nghiep_hien_nay.description, enabled: @nghe_nghiep_hien_nay.enabled, name: @nghe_nghiep_hien_nay.name } }
    end

    assert_redirected_to nghe_nghiep_hien_nay_url(NgheNghiepHienNay.last)
  end

  test "should show nghe_nghiep_hien_nay" do
    get nghe_nghiep_hien_nay_url(@nghe_nghiep_hien_nay)
    assert_response :success
  end

  test "should get edit" do
    get edit_nghe_nghiep_hien_nay_url(@nghe_nghiep_hien_nay)
    assert_response :success
  end

  test "should update nghe_nghiep_hien_nay" do
    patch nghe_nghiep_hien_nay_url(@nghe_nghiep_hien_nay), params: { nghe_nghiep_hien_nay: { description: @nghe_nghiep_hien_nay.description, enabled: @nghe_nghiep_hien_nay.enabled, name: @nghe_nghiep_hien_nay.name } }
    assert_redirected_to nghe_nghiep_hien_nay_url(@nghe_nghiep_hien_nay)
  end

  test "should destroy nghe_nghiep_hien_nay" do
    assert_difference('NgheNghiepHienNay.count', -1) do
      delete nghe_nghiep_hien_nay_url(@nghe_nghiep_hien_nay)
    end

    assert_redirected_to nghe_nghiep_hien_nays_url
  end
end
