require "application_system_test_case"

class CaseTypesTest < ApplicationSystemTestCase
  setup do
    @case_type = case_types(:one)
  end

  test "visiting the index" do
    visit case_types_url
    assert_selector "h1", text: "Case Types"
  end

  test "creating a Case type" do
    visit case_types_url
    click_on "New Case Type"

    fill_in "Type of case", with: @case_type.type_of_case
    click_on "Create Case type"

    assert_text "Case type was successfully created"
    click_on "Back"
  end

  test "updating a Case type" do
    visit case_types_url
    click_on "Edit", match: :first

    fill_in "Type of case", with: @case_type.type_of_case
    click_on "Update Case type"

    assert_text "Case type was successfully updated"
    click_on "Back"
  end

  test "destroying a Case type" do
    visit case_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Case type was successfully destroyed"
  end
end
