require 'test_helper'

class StocksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get stocks_show_url
    assert_response :success
  end

  test "should get edit" do
    get stocks_edit_url
    assert_response :success
  end

  test "should get update" do
    get stocks_update_url
    assert_response :success
  end

end
