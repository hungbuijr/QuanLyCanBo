require 'test_helper'

class QueQuansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @que_quan = que_quans(:one)
  end

  test "should get index" do
    get que_quans_url
    assert_response :success
  end

  test "should get new" do
    get new_que_quan_url
    assert_response :success
  end

  test "should create que_quan" do
    assert_difference('QueQuan.count') do
      post que_quans_url, params: { que_quan: { description: @que_quan.description, enabled: @que_quan.enabled, name: @que_quan.name } }
    end

    assert_redirected_to que_quan_url(QueQuan.last)
  end

  test "should show que_quan" do
    get que_quan_url(@que_quan)
    assert_response :success
  end

  test "should get edit" do
    get edit_que_quan_url(@que_quan)
    assert_response :success
  end

  test "should update que_quan" do
    patch que_quan_url(@que_quan), params: { que_quan: { description: @que_quan.description, enabled: @que_quan.enabled, name: @que_quan.name } }
    assert_redirected_to que_quan_url(@que_quan)
  end

  test "should destroy que_quan" do
    assert_difference('QueQuan.count', -1) do
      delete que_quan_url(@que_quan)
    end

    assert_redirected_to que_quans_url
  end
end
