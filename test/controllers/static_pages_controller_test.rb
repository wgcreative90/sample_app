# frozen_string_literal: true
require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test 'should get home' do
    get home_url
    assert_response :success
    assert_select 'title', 'Home | Ruby on Rails Tutorial Sample App'
  end

  test 'should get help' do
    get help_url
    assert_response :success
    assert_select 'title', 'Help | Ruby on Rails Tutorial Sample App'
  end

  test 'should get about' do
    get about_url
    assert_response :success
    assert_select 'title', 'About | Ruby on Rails Tutorial Sample App'
  end

  test 'should get contact' do
    get contact_url
    assert_response :success
    assert_select 'title', 'Contact | Ruby on Rails Tutorial Sample App'
  end

  test 'should get signup' do
    get signup_url
    assert_response :success
  end

  test 'should get login' do
    get login_url
    assert_response :success
  end

end
