require 'test_helper'

class MonHocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mon_hoc = mon_hocs(:one)
  end

  test "should get index" do
    get mon_hocs_url
    assert_response :success
  end

  test "should get new" do
    get new_mon_hoc_url
    assert_response :success
  end

  test "should create mon_hoc" do
    assert_difference('MonHoc.count') do
      post mon_hocs_url, params: { mon_hoc: { description: @mon_hoc.description, enabled: @mon_hoc.enabled, name: @mon_hoc.name } }
    end

    assert_redirected_to mon_hoc_url(MonHoc.last)
  end

  test "should show mon_hoc" do
    get mon_hoc_url(@mon_hoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_mon_hoc_url(@mon_hoc)
    assert_response :success
  end

  test "should update mon_hoc" do
    patch mon_hoc_url(@mon_hoc), params: { mon_hoc: { description: @mon_hoc.description, enabled: @mon_hoc.enabled, name: @mon_hoc.name } }
    assert_redirected_to mon_hoc_url(@mon_hoc)
  end

  test "should destroy mon_hoc" do
    assert_difference('MonHoc.count', -1) do
      delete mon_hoc_url(@mon_hoc)
    end

    assert_redirected_to mon_hocs_url
  end
end
