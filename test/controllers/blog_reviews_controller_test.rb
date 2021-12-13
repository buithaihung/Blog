require 'test_helper'

class BlogReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_review = blog_reviews(:one)
  end

  test "should get index" do
    get blog_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_review_url
    assert_response :success
  end

  test "should create blog_review" do
    assert_difference('BlogReview.count') do
      post blog_reviews_url, params: { blog_review: { blog_id: @blog_review.blog_id, review: @blog_review.review, user_id: @blog_review.user_id } }
    end

    assert_redirected_to blog_review_url(BlogReview.last)
  end

  test "should show blog_review" do
    get blog_review_url(@blog_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_review_url(@blog_review)
    assert_response :success
  end

  test "should update blog_review" do
    patch blog_review_url(@blog_review), params: { blog_review: { blog_id: @blog_review.blog_id, review: @blog_review.review, user_id: @blog_review.user_id } }
    assert_redirected_to blog_review_url(@blog_review)
  end

  test "should destroy blog_review" do
    assert_difference('BlogReview.count', -1) do
      delete blog_review_url(@blog_review)
    end

    assert_redirected_to blog_reviews_url
  end
end
