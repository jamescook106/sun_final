require 'test_helper'

class ResourceControllerTest < ActionController::TestCase

  def setup
    @base_title = "SUN"
  end

  test "should get resources" do
    get :index
    assert_response :success
    assert_select "title", "Resources | #{@base_title}"
  end

  test "should get resource detail" do
    resource=Resource.new
    resource.name='TEST'
    resource.short='Short'
    resource.long='Long'
    resource.save
    get :full_description, id:resource.id
    assert_response :success
    assert_select "title", resource.name + " | #{@base_title}"
  end

end
