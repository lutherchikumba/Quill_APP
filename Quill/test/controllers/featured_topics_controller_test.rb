require 'test_helper'

class FeaturedTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @featured_topic = featured_topics(:one)
  end

  test "should get index" do
    get featured_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_featured_topic_url
    assert_response :success
  end

  test "should create featured_topic" do
    assert_difference('FeaturedTopic.count') do
      post featured_topics_url, params: { featured_topic: { topic: @featured_topic.topic } }
    end

    assert_redirected_to featured_topic_url(FeaturedTopic.last)
  end

  test "should show featured_topic" do
    get featured_topic_url(@featured_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_featured_topic_url(@featured_topic)
    assert_response :success
  end

  test "should update featured_topic" do
    patch featured_topic_url(@featured_topic), params: { featured_topic: { topic: @featured_topic.topic } }
    assert_redirected_to featured_topic_url(@featured_topic)
  end

  test "should destroy featured_topic" do
    assert_difference('FeaturedTopic.count', -1) do
      delete featured_topic_url(@featured_topic)
    end

    assert_redirected_to featured_topics_url
  end
end
