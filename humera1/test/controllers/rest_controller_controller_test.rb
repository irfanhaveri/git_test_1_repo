require 'test_helper'

class RestControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get putmethod" do
    get rest_controller_putmethod_url
    assert_response :success
  end

end
