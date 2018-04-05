<<<<<<< HEAD
require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
=======
require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get static_pages_contact
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
>>>>>>> 1df3a11... Finish Chapter 3
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
<<<<<<< HEAD
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
=======
>>>>>>> 1df3a11... Finish Chapter 3
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
<<<<<<< HEAD
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
=======
>>>>>>> 1df3a11... Finish Chapter 3
  end
end
