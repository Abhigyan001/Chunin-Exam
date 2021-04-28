require "test_helper"

class ShorturlControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get shorturl_home_url
    assert_response :success
  end
end
