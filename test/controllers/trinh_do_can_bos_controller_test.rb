require 'test_helper'

class TrinhDoCanBosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trinh_do_can_bo = trinh_do_can_bos(:one)
  end

  test "should get index" do
    get trinh_do_can_bos_url
    assert_response :success
  end

  test "should get new" do
    get new_trinh_do_can_bo_url
    assert_response :success
  end

  test "should create trinh_do_can_bo" do
    assert_difference('TrinhDoCanBo.count') do
      post trinh_do_can_bos_url, params: { trinh_do_can_bo: {  } }
    end

    assert_redirected_to trinh_do_can_bo_url(TrinhDoCanBo.last)
  end

  test "should show trinh_do_can_bo" do
    get trinh_do_can_bo_url(@trinh_do_can_bo)
    assert_response :success
  end

  test "should get edit" do
    get edit_trinh_do_can_bo_url(@trinh_do_can_bo)
    assert_response :success
  end

  test "should update trinh_do_can_bo" do
    patch trinh_do_can_bo_url(@trinh_do_can_bo), params: { trinh_do_can_bo: {  } }
    assert_redirected_to trinh_do_can_bo_url(@trinh_do_can_bo)
  end

  test "should destroy trinh_do_can_bo" do
    assert_difference('TrinhDoCanBo.count', -1) do
      delete trinh_do_can_bo_url(@trinh_do_can_bo)
    end

    assert_redirected_to trinh_do_can_bos_url
  end
end
