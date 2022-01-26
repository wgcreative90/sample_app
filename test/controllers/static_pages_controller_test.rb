require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home page for static_pages controller" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help page for static_pages controller" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get about page for static_pages controller" do  
    get static_pages_about_url
    assert_response :success
  end
end
