require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get home_top_url
    assert_response :success
  end

  test "should get projects" do
    get home_projects_url
    assert_response :success
  end

  test "should get item" do
    get home_item_url
    assert_response :success
  end
end
