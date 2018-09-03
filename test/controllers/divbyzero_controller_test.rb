require 'test_helper'

class DivbyzeroControllerTest < ActionDispatch::IntegrationTest
  test "should get ques1" do
    get divbyzero_ques1_url
    assert_response :success
  end

end
