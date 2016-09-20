require 'test_helper'

class StudentinfosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get studentinfos_new_url
    assert_response :success
  end

end
