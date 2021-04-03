require 'test_helper'

class NgoaiNgusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ngoai_ngu = ngoai_ngus(:one)
  end

  test "should get index" do
    get ngoai_ngus_url
    assert_response :success
  end

  test "should get new" do
    get new_ngoai_ngu_url
    assert_response :success
  end

  test "should create ngoai_ngu" do
    assert_difference('NgoaiNgu.count') do
      post ngoai_ngus_url, params: { ngoai_ngu: { cap_do: @ngoai_ngu.cap_do, description: @ngoai_ngu.description, enabled: @ngoai_ngu.enabled, name: @ngoai_ngu.name } }
    end

    assert_redirected_to ngoai_ngu_url(NgoaiNgu.last)
  end

  test "should show ngoai_ngu" do
    get ngoai_ngu_url(@ngoai_ngu)
    assert_response :success
  end

  test "should get edit" do
    get edit_ngoai_ngu_url(@ngoai_ngu)
    assert_response :success
  end

  test "should update ngoai_ngu" do
    patch ngoai_ngu_url(@ngoai_ngu), params: { ngoai_ngu: { cap_do: @ngoai_ngu.cap_do, description: @ngoai_ngu.description, enabled: @ngoai_ngu.enabled, name: @ngoai_ngu.name } }
    assert_redirected_to ngoai_ngu_url(@ngoai_ngu)
  end

  test "should destroy ngoai_ngu" do
    assert_difference('NgoaiNgu.count', -1) do
      delete ngoai_ngu_url(@ngoai_ngu)
    end

    assert_redirected_to ngoai_ngus_url
  end
end
