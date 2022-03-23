require "test_helper"

class CourtNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @court_name = court_names(:one)
  end

  test "should get index" do
    get court_names_url
    assert_response :success
  end

  test "should get new" do
    get new_court_name_url
    assert_response :success
  end

  test "should create court_name" do
    assert_difference('CourtName.count') do
      post court_names_url, params: { court_name: { Court_name: @court_name.Court_name } }
    end

    assert_redirected_to court_name_url(CourtName.last)
  end

  test "should show court_name" do
    get court_name_url(@court_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_court_name_url(@court_name)
    assert_response :success
  end

  test "should update court_name" do
    patch court_name_url(@court_name), params: { court_name: { Court_name: @court_name.Court_name } }
    assert_redirected_to court_name_url(@court_name)
  end

  test "should destroy court_name" do
    assert_difference('CourtName.count', -1) do
      delete court_name_url(@court_name)
    end

    assert_redirected_to court_names_url
  end
end
