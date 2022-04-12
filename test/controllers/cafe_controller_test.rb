require "test_helper"

class CafeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cafe_index_url
    assert_response :success
  end
end
