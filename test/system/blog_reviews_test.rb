require "application_system_test_case"

class BlogReviewsTest < ApplicationSystemTestCase
  setup do
    @blog_review = blog_reviews(:one)
  end

  test "visiting the index" do
    visit blog_reviews_url
    assert_selector "h1", text: "Blog Reviews"
  end

  test "creating a Blog review" do
    visit blog_reviews_url
    click_on "New Blog Review"

    fill_in "Blog", with: @blog_review.blog_id
    fill_in "Review", with: @blog_review.review
    fill_in "User", with: @blog_review.user_id
    click_on "Create Blog review"

    assert_text "Blog review was successfully created"
    click_on "Back"
  end

  test "updating a Blog review" do
    visit blog_reviews_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @blog_review.blog_id
    fill_in "Review", with: @blog_review.review
    fill_in "User", with: @blog_review.user_id
    click_on "Update Blog review"

    assert_text "Blog review was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog review" do
    visit blog_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog review was successfully destroyed"
  end
end
