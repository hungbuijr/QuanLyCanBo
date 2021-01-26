require 'test_helper'

class TrinhDosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trinh_do = trinh_dos(:one)
  end

  test "should get index" do
    get trinh_dos_url
    assert_response :success
  end

  test "should get new" do
    get new_trinh_do_url
    assert_response :success
  end

  test "should create trinh_do" do
    assert_difference('TrinhDo.count') do
      post trinh_dos_url, params: { trinh_do: { description: @trinh_do.description, enabled: @trinh_do.enabled, name: @trinh_do.name } }
    end

    assert_redirected_to trinh_do_url(TrinhDo.last)
  end

  test "should show trinh_do" do
    get trinh_do_url(@trinh_do)
    assert_response :success
  end

  test "should get edit" do
    get edit_trinh_do_url(@trinh_do)
    assert_response :success
  end

  test "should update trinh_do" do
    patch trinh_do_url(@trinh_do), params: { trinh_do: { description: @trinh_do.description, enabled: @trinh_do.enabled, name: @trinh_do.name } }
    assert_redirected_to trinh_do_url(@trinh_do)
  end

  test "should destroy trinh_do" do
    assert_difference('TrinhDo.count', -1) do
      delete trinh_do_url(@trinh_do)
    end

    assert_redirected_to trinh_dos_url
  end
end
