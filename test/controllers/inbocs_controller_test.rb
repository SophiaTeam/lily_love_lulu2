require 'test_helper'

class InbocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inboc = inbocs(:one)
  end

  test "should get index" do
    get inbocs_url
    assert_response :success
  end

  test "should get new" do
    get new_inboc_url
    assert_response :success
  end

  test "should create inboc" do
    assert_difference('Inboc.count') do
      post inbocs_url, params: { inboc: { content: @inboc.content, title: @inboc.title, user_id: @inboc.user_id } }
    end

    assert_redirected_to inboc_url(Inboc.last)
  end

  test "should show inboc" do
    get inboc_url(@inboc)
    assert_response :success
  end

  test "should get edit" do
    get edit_inboc_url(@inboc)
    assert_response :success
  end

  test "should update inboc" do
    patch inboc_url(@inboc), params: { inboc: { content: @inboc.content, title: @inboc.title, user_id: @inboc.user_id } }
    assert_redirected_to inboc_url(@inboc)
  end

  test "should destroy inboc" do
    assert_difference('Inboc.count', -1) do
      delete inboc_url(@inboc)
    end

    assert_redirected_to inbocs_url
  end
end
