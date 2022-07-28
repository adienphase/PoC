require "test_helper"

class PortControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get port_search_url
    assert_response :success
  end
end
