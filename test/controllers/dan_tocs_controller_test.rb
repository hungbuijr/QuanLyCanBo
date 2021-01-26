require 'test_helper'

class DanTocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dan_toc = dan_tocs(:one)
  end

  test "should get index" do
    get dan_tocs_url
    assert_response :success
  end

  test "should get new" do
    get new_dan_toc_url
    assert_response :success
  end

  test "should create dan_toc" do
    assert_difference('DanToc.count') do
      post dan_tocs_url, params: { dan_toc: { description: @dan_toc.description, enabled: @dan_toc.enabled, name: @dan_toc.name } }
    end

    assert_redirected_to dan_toc_url(DanToc.last)
  end

  test "should show dan_toc" do
    get dan_toc_url(@dan_toc)
    assert_response :success
  end

  test "should get edit" do
    get edit_dan_toc_url(@dan_toc)
    assert_response :success
  end

  test "should update dan_toc" do
    patch dan_toc_url(@dan_toc), params: { dan_toc: { description: @dan_toc.description, enabled: @dan_toc.enabled, name: @dan_toc.name } }
    assert_redirected_to dan_toc_url(@dan_toc)
  end

  test "should destroy dan_toc" do
    assert_difference('DanToc.count', -1) do
      delete dan_toc_url(@dan_toc)
    end

    assert_redirected_to dan_tocs_url
  end
end
