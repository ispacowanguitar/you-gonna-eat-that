require 'test_helper'

class GroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index:page" do
    get groups_index:page_url
    assert_response :success
  end

end
