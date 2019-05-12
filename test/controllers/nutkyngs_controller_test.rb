require 'test_helper'

class NutkyngsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nutkyngs_index_url
    assert_response :success
  end

end
