require "test_helper"

class User::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_users_update_url
    assert_response :success
  end

  test "should get quit" do
    get user_users_quit_url
    assert_response :success
  end

  test "should get withdraw" do
    get user_users_withdraw_url
    assert_response :success
  end
end
