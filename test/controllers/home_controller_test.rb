require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get indx" do
    get home_indx_url
    assert_response :success
  end

end
