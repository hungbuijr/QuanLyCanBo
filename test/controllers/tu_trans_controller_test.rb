require 'test_helper'

class TuTransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tu_tran = tu_trans(:one)
  end

  test "should get index" do
    get tu_trans_url
    assert_response :success
  end

  test "should get new" do
    get new_tu_tran_url
    assert_response :success
  end

  test "should create tu_tran" do
    assert_difference('TuTran.count') do
      post tu_trans_url, params: { tu_tran: { description: @tu_tran.description, enabled: @tu_tran.enabled, ly_do: @tu_tran.ly_do, name: @tu_tran.name, ngay_tu_tran: @tu_tran.ngay_tu_tran } }
    end

    assert_redirected_to tu_tran_url(TuTran.last)
  end

  test "should show tu_tran" do
    get tu_tran_url(@tu_tran)
    assert_response :success
  end

  test "should get edit" do
    get edit_tu_tran_url(@tu_tran)
    assert_response :success
  end

  test "should update tu_tran" do
    patch tu_tran_url(@tu_tran), params: { tu_tran: { description: @tu_tran.description, enabled: @tu_tran.enabled, ly_do: @tu_tran.ly_do, name: @tu_tran.name, ngay_tu_tran: @tu_tran.ngay_tu_tran } }
    assert_redirected_to tu_tran_url(@tu_tran)
  end

  test "should destroy tu_tran" do
    assert_difference('TuTran.count', -1) do
      delete tu_tran_url(@tu_tran)
    end

    assert_redirected_to tu_trans_url
  end
end
