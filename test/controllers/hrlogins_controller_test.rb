require 'test_helper'

class HrloginsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hrlogins_index_url
    assert_response :success
  end

  test "should get new" do
    get hrlogins_new_url
    assert_response :success
  end

end
