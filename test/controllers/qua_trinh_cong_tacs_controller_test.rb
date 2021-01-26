require 'test_helper'

class QuaTrinhCongTacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qua_trinh_cong_tac = qua_trinh_cong_tacs(:one)
  end

  test "should get index" do
    get qua_trinh_cong_tacs_url
    assert_response :success
  end

  test "should get new" do
    get new_qua_trinh_cong_tac_url
    assert_response :success
  end

  test "should create qua_trinh_cong_tac" do
    assert_difference('QuaTrinhCongTac.count') do
      post qua_trinh_cong_tacs_url, params: { qua_trinh_cong_tac: { description: @qua_trinh_cong_tac.description, enabled: @qua_trinh_cong_tac.enabled, name: @qua_trinh_cong_tac.name } }
    end

    assert_redirected_to qua_trinh_cong_tac_url(QuaTrinhCongTac.last)
  end

  test "should show qua_trinh_cong_tac" do
    get qua_trinh_cong_tac_url(@qua_trinh_cong_tac)
    assert_response :success
  end

  test "should get edit" do
    get edit_qua_trinh_cong_tac_url(@qua_trinh_cong_tac)
    assert_response :success
  end

  test "should update qua_trinh_cong_tac" do
    patch qua_trinh_cong_tac_url(@qua_trinh_cong_tac), params: { qua_trinh_cong_tac: { description: @qua_trinh_cong_tac.description, enabled: @qua_trinh_cong_tac.enabled, name: @qua_trinh_cong_tac.name } }
    assert_redirected_to qua_trinh_cong_tac_url(@qua_trinh_cong_tac)
  end

  test "should destroy qua_trinh_cong_tac" do
    assert_difference('QuaTrinhCongTac.count', -1) do
      delete qua_trinh_cong_tac_url(@qua_trinh_cong_tac)
    end

    assert_redirected_to qua_trinh_cong_tacs_url
  end
end
