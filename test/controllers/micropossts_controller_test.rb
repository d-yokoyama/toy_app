require 'test_helper'

class MicroposstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microposst = micropossts(:one)
  end

  test "should get index" do
    get micropossts_url
    assert_response :success
  end

  test "should get new" do
    get new_microposst_url
    assert_response :success
  end

  test "should create microposst" do
    assert_difference('Microposst.count') do
      post micropossts_url, params: { microposst: { content: @microposst.content, user_id: @microposst.user_id } }
    end

    assert_redirected_to microposst_url(Microposst.last)
  end

  test "should show microposst" do
    get microposst_url(@microposst)
    assert_response :success
  end

  test "should get edit" do
    get edit_microposst_url(@microposst)
    assert_response :success
  end

  test "should update microposst" do
    patch microposst_url(@microposst), params: { microposst: { content: @microposst.content, user_id: @microposst.user_id } }
    assert_redirected_to microposst_url(@microposst)
  end

  test "should destroy microposst" do
    assert_difference('Microposst.count', -1) do
      delete microposst_url(@microposst)
    end

    assert_redirected_to micropossts_url
  end
end
