require "test_helper"

class BloomBeautyControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get bloom_beauty_home_url
    assert_response :success
  end
end
