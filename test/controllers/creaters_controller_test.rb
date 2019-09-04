require 'test_helper'

class CreatersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creaters_index_url
    assert_response :success
  end

  test "should get new" do
    get creaters_new_url
    assert_response :success
  end

  test "should get create" do
    get creaters_create_url
    assert_response :success
  end

  test "should get destroy" do
    get creaters_destroy_url
    assert_response :success
  end

end
