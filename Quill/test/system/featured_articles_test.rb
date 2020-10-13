require "application_system_test_case"

class FeaturedArticlesTest < ApplicationSystemTestCase
  setup do
    @featured_article = featured_articles(:one)
  end

  test "visiting the index" do
    visit featured_articles_url
    assert_selector "h1", text: "Featured Articles"
  end

  test "creating a Featured article" do
    visit featured_articles_url
    click_on "New Featured Article"

    fill_in "Article", with: @featured_article.article
    click_on "Create Featured article"

    assert_text "Featured article was successfully created"
    click_on "Back"
  end

  test "updating a Featured article" do
    visit featured_articles_url
    click_on "Edit", match: :first

    fill_in "Article", with: @featured_article.article
    click_on "Update Featured article"

    assert_text "Featured article was successfully updated"
    click_on "Back"
  end

  test "destroying a Featured article" do
    visit featured_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Featured article was successfully destroyed"
  end
end
