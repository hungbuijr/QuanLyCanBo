require 'test_helper'

class BoiDuongNvcsgTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boi_duong_nvcsgt = boi_duong_nvcsgts(:one)
  end

  test "should get index" do
    get boi_duong_nvcsgts_url
    assert_response :success
  end

  test "should get new" do
    get new_boi_duong_nvcsgt_url
    assert_response :success
  end

  test "should create boi_duong_nvcsgt" do
    assert_difference('BoiDuongNvcsgt.count') do
      post boi_duong_nvcsgts_url, params: { boi_duong_nvcsgt: { description: @boi_duong_nvcsgt.description, enabled: @boi_duong_nvcsgt.enabled, name: @boi_duong_nvcsgt.name } }
    end

    assert_redirected_to boi_duong_nvcsgt_url(BoiDuongNvcsgt.last)
  end

  test "should show boi_duong_nvcsgt" do
    get boi_duong_nvcsgt_url(@boi_duong_nvcsgt)
    assert_response :success
  end

  test "should get edit" do
    get edit_boi_duong_nvcsgt_url(@boi_duong_nvcsgt)
    assert_response :success
  end

  test "should update boi_duong_nvcsgt" do
    patch boi_duong_nvcsgt_url(@boi_duong_nvcsgt), params: { boi_duong_nvcsgt: { description: @boi_duong_nvcsgt.description, enabled: @boi_duong_nvcsgt.enabled, name: @boi_duong_nvcsgt.name } }
    assert_redirected_to boi_duong_nvcsgt_url(@boi_duong_nvcsgt)
  end

  test "should destroy boi_duong_nvcsgt" do
    assert_difference('BoiDuongNvcsgt.count', -1) do
      delete boi_duong_nvcsgt_url(@boi_duong_nvcsgt)
    end

    assert_redirected_to boi_duong_nvcsgts_url
  end
end
