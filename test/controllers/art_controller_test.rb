require 'test_helper'

class ArtControllerTest < ActionDispatch::IntegrationTest
  test "should get first" do
    get art_first_url
    assert_response :success
  end

end
