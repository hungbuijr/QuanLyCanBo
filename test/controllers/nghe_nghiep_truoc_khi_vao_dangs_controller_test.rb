require 'test_helper'

class NgheNghiepTruocKhiVaoDangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nghe_nghiep_truoc_khi_vao_dang = nghe_nghiep_truoc_khi_vao_dangs(:one)
  end

  test "should get index" do
    get nghe_nghiep_truoc_khi_vao_dangs_url
    assert_response :success
  end

  test "should get new" do
    get new_nghe_nghiep_truoc_khi_vao_dang_url
    assert_response :success
  end

  test "should create nghe_nghiep_truoc_khi_vao_dang" do
    assert_difference('NgheNghiepTruocKhiVaoDang.count') do
      post nghe_nghiep_truoc_khi_vao_dangs_url, params: { nghe_nghiep_truoc_khi_vao_dang: { description: @nghe_nghiep_truoc_khi_vao_dang.description, enabled: @nghe_nghiep_truoc_khi_vao_dang.enabled, name: @nghe_nghiep_truoc_khi_vao_dang.name } }
    end

    assert_redirected_to nghe_nghiep_truoc_khi_vao_dang_url(NgheNghiepTruocKhiVaoDang.last)
  end

  test "should show nghe_nghiep_truoc_khi_vao_dang" do
    get nghe_nghiep_truoc_khi_vao_dang_url(@nghe_nghiep_truoc_khi_vao_dang)
    assert_response :success
  end

  test "should get edit" do
    get edit_nghe_nghiep_truoc_khi_vao_dang_url(@nghe_nghiep_truoc_khi_vao_dang)
    assert_response :success
  end

  test "should update nghe_nghiep_truoc_khi_vao_dang" do
    patch nghe_nghiep_truoc_khi_vao_dang_url(@nghe_nghiep_truoc_khi_vao_dang), params: { nghe_nghiep_truoc_khi_vao_dang: { description: @nghe_nghiep_truoc_khi_vao_dang.description, enabled: @nghe_nghiep_truoc_khi_vao_dang.enabled, name: @nghe_nghiep_truoc_khi_vao_dang.name } }
    assert_redirected_to nghe_nghiep_truoc_khi_vao_dang_url(@nghe_nghiep_truoc_khi_vao_dang)
  end

  test "should destroy nghe_nghiep_truoc_khi_vao_dang" do
    assert_difference('NgheNghiepTruocKhiVaoDang.count', -1) do
      delete nghe_nghiep_truoc_khi_vao_dang_url(@nghe_nghiep_truoc_khi_vao_dang)
    end

    assert_redirected_to nghe_nghiep_truoc_khi_vao_dangs_url
  end
end
