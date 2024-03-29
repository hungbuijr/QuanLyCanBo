require 'test_helper'

class BoiDuongQpaNsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boi_duong_qpan = boi_duong_qpans(:one)
  end

  test "should get index" do
    get boi_duong_qpans_url
    assert_response :success
  end

  test "should get new" do
    get new_boi_duong_qpan_url
    assert_response :success
  end

  test "should create boi_duong_qpan" do
    assert_difference('BoiDuongQpan.count') do
      post boi_duong_qpans_url, params: { boi_duong_qpan: { description: @boi_duong_qpan.description, enabled: @boi_duong_qpan.enabled, name: @boi_duong_qpan.name } }
    end

    assert_redirected_to boi_duong_qpan_url(BoiDuongQpan.last)
  end

  test "should show boi_duong_qpan" do
    get boi_duong_qpan_url(@boi_duong_qpan)
    assert_response :success
  end

  test "should get edit" do
    get edit_boi_duong_qpan_url(@boi_duong_qpan)
    assert_response :success
  end

  test "should update boi_duong_qpan" do
    patch boi_duong_qpan_url(@boi_duong_qpan), params: { boi_duong_qpan: { description: @boi_duong_qpan.description, enabled: @boi_duong_qpan.enabled, name: @boi_duong_qpan.name } }
    assert_redirected_to boi_duong_qpan_url(@boi_duong_qpan)
  end

  test "should destroy boi_duong_qpan" do
    assert_difference('BoiDuongQpan.count', -1) do
      delete boi_duong_qpan_url(@boi_duong_qpan)
    end

    assert_redirected_to boi_duong_qpans_url
  end
end
