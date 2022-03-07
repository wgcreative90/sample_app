require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get user_index,_url
    assert_response :success
  end

  test "should get show," do
    get user_show,_url
    assert_response :success
  end

  test "should get new," do
    get user_new,_url
    assert_response :success
  end

  test "should get update," do
    get user_update,_url
    assert_response :success
  end

  test "should get delete" do
    get user_delete_url
    assert_response :success
  end
end
