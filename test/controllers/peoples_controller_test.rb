require 'test_helper'

class PeoplesControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get peoples_page_url
    assert_response :success
  end

end
