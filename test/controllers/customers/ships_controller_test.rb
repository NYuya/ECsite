require 'test_helper'

class Customers::ShipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_ships_index_url
    assert_response :success
  end

  test "should get edit" do
    get customers_ships_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get customers_ships_destroy_url
    assert_response :success
  end

  test "should get update" do
    get customers_ships_update_url
    assert_response :success
  end

  test "should get create" do
    get customers_ships_create_url
    assert_response :success
  end

end
