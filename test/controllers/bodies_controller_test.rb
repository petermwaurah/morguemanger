require 'test_helper'

class BodiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bodies_new_url
    assert_response :success
  end

  test "should get index" do
    get bodies_index_url
    assert_response :success
  end

  test "should get show" do
    get bodies_show_url
    assert_response :success
  end

end
