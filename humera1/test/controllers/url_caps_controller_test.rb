require 'test_helper'

class UrlCapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @url_cap = url_caps(:one)
  end

  test "should get index" do
    get url_caps_url
    assert_response :success
  end

  test "should get new" do
    get new_url_cap_url
    assert_response :success
  end

  test "should create url_cap" do
    assert_difference('UrlCap.count') do
      post url_caps_url, params: { url_cap: {  } }
    end

    assert_redirected_to url_cap_url(UrlCap.last)
  end

  test "should show url_cap" do
    get url_cap_url(@url_cap)
    assert_response :success
  end

  test "should get edit" do
    get edit_url_cap_url(@url_cap)
    assert_response :success
  end

  test "should update url_cap" do
    patch url_cap_url(@url_cap), params: { url_cap: {  } }
    assert_redirected_to url_cap_url(@url_cap)
  end

  test "should destroy url_cap" do
    assert_difference('UrlCap.count', -1) do
      delete url_cap_url(@url_cap)
    end

    assert_redirected_to url_caps_url
  end
end
