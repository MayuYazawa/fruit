require "test_helper"

class User::DeliveriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_deliveries_index_url
    assert_response :success
  end

  test "should get edit" do
    get user_deliveries_edit_url
    assert_response :success
  end

  test "should get create" do
    get user_deliveries_create_url
    assert_response :success
  end

  test "should get update" do
    get user_deliveries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_deliveries_destroy_url
    assert_response :success
  end
end
