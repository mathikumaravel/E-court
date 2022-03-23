require "application_system_test_case"

class CourtNamesTest < ApplicationSystemTestCase
  setup do
    @court_name = court_names(:one)
  end

  test "visiting the index" do
    visit court_names_url
    assert_selector "h1", text: "Court Names"
  end

  test "creating a Court name" do
    visit court_names_url
    click_on "New Court Name"

    fill_in "Court name", with: @court_name.Court_name
    click_on "Create Court name"

    assert_text "Court name was successfully created"
    click_on "Back"
  end

  test "updating a Court name" do
    visit court_names_url
    click_on "Edit", match: :first

    fill_in "Court name", with: @court_name.Court_name
    click_on "Update Court name"

    assert_text "Court name was successfully updated"
    click_on "Back"
  end

  test "destroying a Court name" do
    visit court_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Court name was successfully destroyed"
  end
end
