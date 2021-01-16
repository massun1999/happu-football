require 'test_helper'

class ThredsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get threds_index_url
    assert_response :success
  end

end
