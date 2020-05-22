require 'test_helper'

class WishListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wish_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get wish_lists_show_url
    assert_response :success
  end

  test "should get edit" do
    get wish_lists_edit_url
    assert_response :success
  end

  test "should get new" do
    get wish_lists_new_url
    assert_response :success
  end

end
