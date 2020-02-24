require 'test_helper'

class SoulControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get soul_new_url
    assert_response :success
  end

end
