require 'test_helper'

class SlopesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get slopes_index_url
    assert_response :success
  end

  test "should get show" do
    get slopes_show_url
    assert_response :success
  end

  test "should get new" do
    get slopes_new_url
    assert_response :success
  end

  test "should get edit" do
    get slopes_edit_url
    assert_response :success
  end

end
