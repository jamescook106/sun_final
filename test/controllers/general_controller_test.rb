require 'test_helper'

class GeneralControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  def setup
    @base_title = "SUN"
  end

  test "should get index" do
    get :static, page: 'index'
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about_sun" do
    get :static, page: 'about_sun'
    assert_response :success
    assert_select "title", "About Sun | #{@base_title}"
  end

  test "should get about_lr" do
    get :static, page: 'about_lr'
    assert_response :success
    assert_select "title", "About Learning Routes | #{@base_title}"
  end

  test "should get contact" do
    get :static, page: 'contact'
    assert_response :success
    assert_select "title", "Contact Us | #{@base_title}"
  end

  test "should get lr1" do
    get :static, page: 'lr1'
    assert_response :success
    assert_select "title", "Learning Route 1 | #{@base_title}"
  end

  test "should get lr2" do
    get :static, page: 'lr2'
    assert_response :success
    assert_select "title", "Learning Route 2 | #{@base_title}"
  end

  test "should get champions" do
    get :champion
    champion=Champion.new
    champion.save
    assert_response :success
    assert_select "title", "Champions | #{@base_title}"
  end

  test "should get champion profile" do
    champion=Champion.new
    champion.first_name='James'
    champion.save
    get :champion_full, id:champion.id
    assert_response :success
    assert_select "title", champion.first_name + " | #{@base_title}"
  end

end
