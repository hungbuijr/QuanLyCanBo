require 'test_helper'

class TinHocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tin_hoc = tin_hocs(:one)
  end

  test "should get index" do
    get tin_hocs_url
    assert_response :success
  end

  test "should get new" do
    get new_tin_hoc_url
    assert_response :success
  end

  test "should create tin_hoc" do
    assert_difference('TinHoc.count') do
      post tin_hocs_url, params: { tin_hoc: { description: @tin_hoc.description, enabled: @tin_hoc.enabled, name: @tin_hoc.name } }
    end

    assert_redirected_to tin_hoc_url(TinHoc.last)
  end

  test "should show tin_hoc" do
    get tin_hoc_url(@tin_hoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_tin_hoc_url(@tin_hoc)
    assert_response :success
  end

  test "should update tin_hoc" do
    patch tin_hoc_url(@tin_hoc), params: { tin_hoc: { description: @tin_hoc.description, enabled: @tin_hoc.enabled, name: @tin_hoc.name } }
    assert_redirected_to tin_hoc_url(@tin_hoc)
  end

  test "should destroy tin_hoc" do
    assert_difference('TinHoc.count', -1) do
      delete tin_hoc_url(@tin_hoc)
    end

    assert_redirected_to tin_hocs_url
  end
end
