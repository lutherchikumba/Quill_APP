require 'test_helper'
include Devise::Test::IntegrationHelpers
class FeaturedArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @featured_article = featured_articles(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get featured_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_featured_article_url
    assert_response :success
  end

  test "should create featured_article" do
    assert_difference('FeaturedArticle.count') do
      post featured_articles_url, params: { featured_article: { article: @featured_article.article } }
    end

    assert_redirected_to featured_article_url(FeaturedArticle.last)
  end

  test "should show featured_article" do
    get featured_article_url(@featured_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_featured_article_url(@featured_article)
    assert_response :success
  end

  test "should update featured_article" do
    patch featured_article_url(@featured_article), params: { featured_article: { article: @featured_article.article } }
    assert_redirected_to featured_article_url(@featured_article)
  end

  test "should destroy featured_article" do
    assert_difference('FeaturedArticle.count', -1) do
      delete featured_article_url(@featured_article)
    end

    assert_redirected_to featured_articles_url
  end
end
