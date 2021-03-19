require "test_helper"

class OrderItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get order_item_index_url
    assert_response :success
  end
end
