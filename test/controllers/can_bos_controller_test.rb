require 'test_helper'

class CanBosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @can_bo = can_bos(:one)
  end

  test "should get index" do
    get can_bos_url
    assert_response :success
  end

  test "should get new" do
    get new_can_bo_url
    assert_response :success
  end

  test "should create can_bo" do
    assert_difference('CanBo.count') do
      post can_bos_url, params: { can_bo: { date_of_birth: @can_bo.date_of_birth, name: @can_bo.name } }
    end

    assert_redirected_to can_bo_url(CanBo.last)
  end

  test "should show can_bo" do
    get can_bo_url(@can_bo)
    assert_response :success
  end

  test "should get edit" do
    get edit_can_bo_url(@can_bo)
    assert_response :success
  end

  test "should update can_bo" do
    patch can_bo_url(@can_bo), params: { can_bo: { date_of_birth: @can_bo.date_of_birth, name: @can_bo.name } }
    assert_redirected_to can_bo_url(@can_bo)
  end

  test "should destroy can_bo" do
    assert_difference('CanBo.count', -1) do
      delete can_bo_url(@can_bo)
    end

    assert_redirected_to can_bos_url
  end
end
