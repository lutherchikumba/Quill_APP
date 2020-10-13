require "application_system_test_case"

class LogInsTest < ApplicationSystemTestCase
  setup do
    @log_in = log_ins(:one)
  end

  test "visiting the index" do
    visit log_ins_url
    assert_selector "h1", text: "Log Ins"
  end

  test "creating a Log in" do
    visit log_ins_url
    click_on "New Log In"

    click_on "Create Log in"

    assert_text "Log in was successfully created"
    click_on "Back"
  end

  test "updating a Log in" do
    visit log_ins_url
    click_on "Edit", match: :first

    click_on "Update Log in"

    assert_text "Log in was successfully updated"
    click_on "Back"
  end

  test "destroying a Log in" do
    visit log_ins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Log in was successfully destroyed"
  end
end
