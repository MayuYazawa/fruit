require "test_helper"

class User::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_orders_new_url
    assert_response :success
  end

  test "should get confirm" do
    get user_orders_confirm_url
    assert_response :success
  end

  test "should get comolete" do
    get user_orders_comolete_url
    assert_response :success
  end

  test "should get create" do
    get user_orders_create_url
    assert_response :success
  end

  test "should get index" do
    get user_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get user_orders_show_url
    assert_response :success
  end
end
