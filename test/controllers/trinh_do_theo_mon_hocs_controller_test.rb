require 'test_helper'

class TrinhDoTheoMonHocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trinh_do_theo_mon_hoc = trinh_do_theo_mon_hocs(:one)
  end

  test "should get index" do
    get trinh_do_theo_mon_hocs_url
    assert_response :success
  end

  test "should get new" do
    get new_trinh_do_theo_mon_hoc_url
    assert_response :success
  end

  test "should create trinh_do_theo_mon_hoc" do
    assert_difference('TrinhDoTheoMonHoc.count') do
      post trinh_do_theo_mon_hocs_url, params: { trinh_do_theo_mon_hoc: { description: @trinh_do_theo_mon_hoc.description, enabled: @trinh_do_theo_mon_hoc.enabled, name: @trinh_do_theo_mon_hoc.name } }
    end

    assert_redirected_to trinh_do_theo_mon_hoc_url(TrinhDoTheoMonHoc.last)
  end

  test "should show trinh_do_theo_mon_hoc" do
    get trinh_do_theo_mon_hoc_url(@trinh_do_theo_mon_hoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_trinh_do_theo_mon_hoc_url(@trinh_do_theo_mon_hoc)
    assert_response :success
  end

  test "should update trinh_do_theo_mon_hoc" do
    patch trinh_do_theo_mon_hoc_url(@trinh_do_theo_mon_hoc), params: { trinh_do_theo_mon_hoc: { description: @trinh_do_theo_mon_hoc.description, enabled: @trinh_do_theo_mon_hoc.enabled, name: @trinh_do_theo_mon_hoc.name } }
    assert_redirected_to trinh_do_theo_mon_hoc_url(@trinh_do_theo_mon_hoc)
  end

  test "should destroy trinh_do_theo_mon_hoc" do
    assert_difference('TrinhDoTheoMonHoc.count', -1) do
      delete trinh_do_theo_mon_hoc_url(@trinh_do_theo_mon_hoc)
    end

    assert_redirected_to trinh_do_theo_mon_hocs_url
  end
end
