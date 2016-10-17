require 'test_helper'

class GeneralControllerTest < ActionController::TestCase
  test "should get static" do
    get :static
    assert_response :success
  end

end
