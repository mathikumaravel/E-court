require "application_system_test_case"

class CaseCategoriesTest < ApplicationSystemTestCase
  setup do
    @case_category = case_categories(:one)
  end

  test "visiting the index" do
    visit case_categories_url
    assert_selector "h1", text: "Case Categories"
  end

  test "creating a Case category" do
    visit case_categories_url
    click_on "New Case Category"

    fill_in "Category", with: @case_category.category
    click_on "Create Case category"

    assert_text "Case category was successfully created"
    click_on "Back"
  end

  test "updating a Case category" do
    visit case_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @case_category.category
    click_on "Update Case category"

    assert_text "Case category was successfully updated"
    click_on "Back"
  end

  test "destroying a Case category" do
    visit case_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Case category was successfully destroyed"
  end
end
