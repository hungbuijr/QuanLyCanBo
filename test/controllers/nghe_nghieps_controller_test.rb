require 'test_helper'

class NgheNghiepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nghe_nghiep = nghe_nghieps(:one)
  end

  test "should get index" do
    get nghe_nghieps_url
    assert_response :success
  end

  test "should get new" do
    get new_nghe_nghiep_url
    assert_response :success
  end

  test "should create nghe_nghiep" do
    assert_difference('NgheNghiep.count') do
      post nghe_nghieps_url, params: { nghe_nghiep: { description: @nghe_nghiep.description, name: @nghe_nghiep.name } }
    end

    assert_redirected_to nghe_nghiep_url(NgheNghiep.last)
  end

  test "should show nghe_nghiep" do
    get nghe_nghiep_url(@nghe_nghiep)
    assert_response :success
  end

  test "should get edit" do
    get edit_nghe_nghiep_url(@nghe_nghiep)
    assert_response :success
  end

  test "should update nghe_nghiep" do
    patch nghe_nghiep_url(@nghe_nghiep), params: { nghe_nghiep: { description: @nghe_nghiep.description, name: @nghe_nghiep.name } }
    assert_redirected_to nghe_nghiep_url(@nghe_nghiep)
  end

  test "should destroy nghe_nghiep" do
    assert_difference('NgheNghiep.count', -1) do
      delete nghe_nghiep_url(@nghe_nghiep)
    end

    assert_redirected_to nghe_nghieps_url
  end
end
