require 'test_helper'

class ChampionControllerTest < ActionController::TestCase
  def setup
    @base_title = "SUN"
  end

  test "should get champions" do
    get :index
    champion=Champion.new
    champion.save
    assert_response :success
    assert_select "title", "Champions | #{@base_title}"
  end

  test "should get champion profile" do
    champion=Champion.new
    champion.first_name='James'
    champion.save
    get :champion_description, id:champion.id
    assert_response :success
    assert_select "title", champion.first_name + " | #{@base_title}"
  end

end
