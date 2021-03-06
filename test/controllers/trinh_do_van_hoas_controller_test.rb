require 'test_helper'

class TrinhDoVanHoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trinh_do_van_hoa = trinh_do_van_hoas(:one)
  end

  test "should get index" do
    get trinh_do_van_hoas_url
    assert_response :success
  end

  test "should get new" do
    get new_trinh_do_van_hoa_url
    assert_response :success
  end

  test "should create trinh_do_van_hoa" do
    assert_difference('TrinhDoVanHoa.count') do
      post trinh_do_van_hoas_url, params: { trinh_do_van_hoa: { description: @trinh_do_van_hoa.description, enabled: @trinh_do_van_hoa.enabled, name: @trinh_do_van_hoa.name } }
    end

    assert_redirected_to trinh_do_van_hoa_url(TrinhDoVanHoa.last)
  end

  test "should show trinh_do_van_hoa" do
    get trinh_do_van_hoa_url(@trinh_do_van_hoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_trinh_do_van_hoa_url(@trinh_do_van_hoa)
    assert_response :success
  end

  test "should update trinh_do_van_hoa" do
    patch trinh_do_van_hoa_url(@trinh_do_van_hoa), params: { trinh_do_van_hoa: { description: @trinh_do_van_hoa.description, enabled: @trinh_do_van_hoa.enabled, name: @trinh_do_van_hoa.name } }
    assert_redirected_to trinh_do_van_hoa_url(@trinh_do_van_hoa)
  end

  test "should destroy trinh_do_van_hoa" do
    assert_difference('TrinhDoVanHoa.count', -1) do
      delete trinh_do_van_hoa_url(@trinh_do_van_hoa)
    end

    assert_redirected_to trinh_do_van_hoas_url
  end
end
