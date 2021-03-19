require "test_helper"

class MenuItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menu_item_index_url
    assert_response :success
  end
end
