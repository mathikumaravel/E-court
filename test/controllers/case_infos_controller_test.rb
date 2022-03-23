require "test_helper"

class CaseInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @case_info = case_infos(:one)
  end

  test "should get index" do
    get case_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_case_info_url
    assert_response :success
  end

  test "should create case_info" do
    assert_difference('CaseInfo.count') do
      post case_infos_url, params: { case_info: {  } }
    end

    assert_redirected_to case_info_url(CaseInfo.last)
  end

  test "should show case_info" do
    get case_info_url(@case_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_case_info_url(@case_info)
    assert_response :success
  end

  test "should update case_info" do
    patch case_info_url(@case_info), params: { case_info: {  } }
    assert_redirected_to case_info_url(@case_info)
  end

  test "should destroy case_info" do
    assert_difference('CaseInfo.count', -1) do
      delete case_info_url(@case_info)
    end

    assert_redirected_to case_infos_url
  end
end
