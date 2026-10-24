require "test_helper"

class ResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get result_url
    assert_response :success
  end
end
