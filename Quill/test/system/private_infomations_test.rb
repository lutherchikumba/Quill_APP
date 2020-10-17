require "application_system_test_case"

class PrivateInfomationsTest < ApplicationSystemTestCase
  setup do
    @private_infomation = private_infomations(:one)
  end

  test "visiting the index" do
    visit private_infomations_url
    assert_selector "h1", text: "Private Infomations"
  end

  test "creating a Private infomation" do
    visit private_infomations_url
    click_on "New Private Infomation"

    fill_in "Email", with: @private_infomation.email
    fill_in "Gender", with: @private_infomation.gender
    fill_in "Phone", with: @private_infomation.phone
    click_on "Create Private infomation"

    assert_text "Private infomation was successfully created"
    click_on "Back"
  end

  test "updating a Private infomation" do
    visit private_infomations_url
    click_on "Edit", match: :first

    fill_in "Email", with: @private_infomation.email
    fill_in "Gender", with: @private_infomation.gender
    fill_in "Phone", with: @private_infomation.phone
    click_on "Update Private infomation"

    assert_text "Private infomation was successfully updated"
    click_on "Back"
  end

  test "destroying a Private infomation" do
    visit private_infomations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Private infomation was successfully destroyed"
  end
end
