require 'test_helper'

class TonGiaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ton_giao = ton_giaos(:one)
  end

  test "should get index" do
    get ton_giaos_url
    assert_response :success
  end

  test "should get new" do
    get new_ton_giao_url
    assert_response :success
  end

  test "should create ton_giao" do
    assert_difference('TonGiao.count') do
      post ton_giaos_url, params: { ton_giao: { description: @ton_giao.description, enabled: @ton_giao.enabled, name: @ton_giao.name } }
    end

    assert_redirected_to ton_giao_url(TonGiao.last)
  end

  test "should show ton_giao" do
    get ton_giao_url(@ton_giao)
    assert_response :success
  end

  test "should get edit" do
    get edit_ton_giao_url(@ton_giao)
    assert_response :success
  end

  test "should update ton_giao" do
    patch ton_giao_url(@ton_giao), params: { ton_giao: { description: @ton_giao.description, enabled: @ton_giao.enabled, name: @ton_giao.name } }
    assert_redirected_to ton_giao_url(@ton_giao)
  end

  test "should destroy ton_giao" do
    assert_difference('TonGiao.count', -1) do
      delete ton_giao_url(@ton_giao)
    end

    assert_redirected_to ton_giaos_url
  end
end
