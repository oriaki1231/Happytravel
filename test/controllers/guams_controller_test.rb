require 'test_helper'

class GuamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get guams_new_url
    assert_response :success
  end

end
