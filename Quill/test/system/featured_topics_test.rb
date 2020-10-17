require "application_system_test_case"

class FeaturedTopicsTest < ApplicationSystemTestCase
  setup do
    @featured_topic = featured_topics(:one)
  end

  test "visiting the index" do
    visit featured_topics_url
    assert_selector "h1", text: "Featured Topics"
  end

  test "creating a Featured topic" do
    visit featured_topics_url
    click_on "New Featured Topic"

    fill_in "Topic", with: @featured_topic.topic
    click_on "Create Featured topic"

    assert_text "Featured topic was successfully created"
    click_on "Back"
  end

  test "updating a Featured topic" do
    visit featured_topics_url
    click_on "Edit", match: :first

    fill_in "Topic", with: @featured_topic.topic
    click_on "Update Featured topic"

    assert_text "Featured topic was successfully updated"
    click_on "Back"
  end

  test "destroying a Featured topic" do
    visit featured_topics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Featured topic was successfully destroyed"
  end
end
