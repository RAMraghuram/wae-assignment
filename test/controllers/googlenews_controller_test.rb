require 'test_helper'

class GooglenewsControllerTest < ActionDispatch::IntegrationTest
  test "should get ques2" do
    get googlenews_ques2_url
    assert_response :success
  end

end
