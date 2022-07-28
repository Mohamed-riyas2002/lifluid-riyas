require "test_helper"

class DonorsControllerTest < ActionDispatch::IntegrationTest
  test "should get donor_register" do
    get donors_donor_register_url
    assert_response :success
  end
end
