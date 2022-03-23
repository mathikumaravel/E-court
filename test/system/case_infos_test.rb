require "application_system_test_case"

class CaseInfosTest < ApplicationSystemTestCase
  setup do
    @case_info = case_infos(:one)
  end

  test "visiting the index" do
    visit case_infos_url
    assert_selector "h1", text: "Case Infos"
  end

  test "creating a Case info" do
    visit case_infos_url
    click_on "New Case Info"

    click_on "Create Case info"

    assert_text "Case info was successfully created"
    click_on "Back"
  end

  test "updating a Case info" do
    visit case_infos_url
    click_on "Edit", match: :first

    click_on "Update Case info"

    assert_text "Case info was successfully updated"
    click_on "Back"
  end

  test "destroying a Case info" do
    visit case_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Case info was successfully destroyed"
  end
end
