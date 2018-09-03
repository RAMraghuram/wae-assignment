require 'test_helper'

class AssignmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assignment_index_url
    assert_response :success
  end

end
