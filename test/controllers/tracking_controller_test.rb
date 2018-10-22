require 'test_helper'

class TrackingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tracking_index_url
    assert_response :success
  end

  test "should get show" do
    get tracking_show_url
    assert_response :success
  end

  test "should get create" do
    get tracking_create_url
    assert_response :success
  end

end
