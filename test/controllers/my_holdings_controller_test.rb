require "test_helper"

class MyHoldingsControllerTest < ActionDispatch::IntegrationTest
  test "should get holdings" do
    get my_holdings_holdings_url
    assert_response :success
  end

  test "should get dispaly" do
    get my_holdings_dispaly_url
    assert_response :success
  end
end
