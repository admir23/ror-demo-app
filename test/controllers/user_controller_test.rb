require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get user_name:string_url
    assert_response :success
  end

  test "should get password:digest" do
    get user_password:digest_url
    assert_response :success
  end

end
