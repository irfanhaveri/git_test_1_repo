require 'test_helper'

class HumeracontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get testmethod" do
    get humeracontroller_testmethod_url
    assert_response :success
  end

end
