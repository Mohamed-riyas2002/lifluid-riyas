require "test_helper"

class BloodBankControllerTest < ActionDispatch::IntegrationTest
  test "should get register_blood_bank" do
    get blood_bank_register_blood_bank_url
    assert_response :success
  end
end
