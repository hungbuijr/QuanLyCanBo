require 'test_helper'

class CapBacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cap_bac = cap_bacs(:one)
  end

  test "should get index" do
    get cap_bacs_url
    assert_response :success
  end

  test "should get new" do
    get new_cap_bac_url
    assert_response :success
  end

  test "should create cap_bac" do
    assert_difference('CapBac.count') do
      post cap_bacs_url, params: { cap_bac: { description: @cap_bac.description, enabled: @cap_bac.enabled, name: @cap_bac.name } }
    end

    assert_redirected_to cap_bac_url(CapBac.last)
  end

  test "should show cap_bac" do
    get cap_bac_url(@cap_bac)
    assert_response :success
  end

  test "should get edit" do
    get edit_cap_bac_url(@cap_bac)
    assert_response :success
  end

  test "should update cap_bac" do
    patch cap_bac_url(@cap_bac), params: { cap_bac: { description: @cap_bac.description, enabled: @cap_bac.enabled, name: @cap_bac.name } }
    assert_redirected_to cap_bac_url(@cap_bac)
  end

  test "should destroy cap_bac" do
    assert_difference('CapBac.count', -1) do
      delete cap_bac_url(@cap_bac)
    end

    assert_redirected_to cap_bacs_url
  end
end
