require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    title_check('')
  end

  test "should get help" do
    get :help
    assert_response :success
    title_check('help')
  end

  test "should get about" do
    get :about
    assert_response :success
    title_check('about')
  end

  test "should get contact" do
    get :contact
    assert_response :success
    title_check('contact')
  end

  # def
  def title_check(title = '')
    if title.empty?
      assert_select "title", "Ruby on Rails Tutorial Sample App"
    else
      assert_select "title", "#{title} | Ruby on Rails Tutorial Sample App"
    end
  end

end
