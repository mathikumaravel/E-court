require "test_helper"

class CaseCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @case_category = case_categories(:one)
  end

  test "should get index" do
    get case_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_case_category_url
    assert_response :success
  end

  test "should create case_category" do
    assert_difference('CaseCategory.count') do
      post case_categories_url, params: { case_category: { category: @case_category.category } }
    end

    assert_redirected_to case_category_url(CaseCategory.last)
  end

  test "should show case_category" do
    get case_category_url(@case_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_case_category_url(@case_category)
    assert_response :success
  end

  test "should update case_category" do
    patch case_category_url(@case_category), params: { case_category: { category: @case_category.category } }
    assert_redirected_to case_category_url(@case_category)
  end

  test "should destroy case_category" do
    assert_difference('CaseCategory.count', -1) do
      delete case_category_url(@case_category)
    end

    assert_redirected_to case_categories_url
  end
end
