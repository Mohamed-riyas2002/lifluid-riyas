require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_donor" do
    get search_search_donor_url
    assert_response :success
  end
end
