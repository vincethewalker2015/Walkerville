require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  
  test "Should Get Home" do
    get pages_home_url
    assert_response :success
  end
  
  
  
  
end