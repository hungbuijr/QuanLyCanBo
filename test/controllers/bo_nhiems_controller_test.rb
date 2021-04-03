require 'test_helper'

class BoNhiemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bo_nhiem = bo_nhiems(:one)
  end

  test "should get index" do
    get bo_nhiems_url
    assert_response :success
  end

  test "should get new" do
    get new_bo_nhiem_url
    assert_response :success
  end

  test "should create bo_nhiem" do
    assert_difference('BoNhiem.count') do
      post bo_nhiems_url, params: { bo_nhiem: {  } }
    end

    assert_redirected_to bo_nhiem_url(BoNhiem.last)
  end

  test "should show bo_nhiem" do
    get bo_nhiem_url(@bo_nhiem)
    assert_response :success
  end

  test "should get edit" do
    get edit_bo_nhiem_url(@bo_nhiem)
    assert_response :success
  end

  test "should update bo_nhiem" do
    patch bo_nhiem_url(@bo_nhiem), params: { bo_nhiem: {  } }
    assert_redirected_to bo_nhiem_url(@bo_nhiem)
  end

  test "should destroy bo_nhiem" do
    assert_difference('BoNhiem.count', -1) do
      delete bo_nhiem_url(@bo_nhiem)
    end

    assert_redirected_to bo_nhiems_url
  end
end
