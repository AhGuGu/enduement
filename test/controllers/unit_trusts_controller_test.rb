require 'test_helper'

class UnitTrustsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unit_trusts_index_url
    assert_response :success
  end

  test "should get new" do
    get unit_trusts_new_url
    assert_response :success
  end

  test "should get edit" do
    get unit_trusts_edit_url
    assert_response :success
  end

  test "should get show" do
    get unit_trusts_show_url
    assert_response :success
  end

end
