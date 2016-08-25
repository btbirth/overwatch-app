require 'test_helper'

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get team_create_url
    assert_response :success
  end

  test "should get show" do
    get team_show_url
    assert_response :success
  end

  test "should get add" do
    get team_add_url
    assert_response :success
  end

  test "should get remove" do
    get team_remove_url
    assert_response :success
  end

end
