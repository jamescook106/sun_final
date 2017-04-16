require 'test_helper'

class CountryControllerTest < ActionController::TestCase
  test "should get network" do
    get :network
    assert_response :success
  end

  test "should get specific" do
    get :specific
    assert_response :success
  end

end
