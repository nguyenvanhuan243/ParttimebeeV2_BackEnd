require 'test_helper'

class AdminloginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adminlogin_index_url
    assert_response :success
  end

end
