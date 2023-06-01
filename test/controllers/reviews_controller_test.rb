# frozen_string_literal: true

require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
    @referer_path = book_url(book_title: 'THE WAGER', item_index: 0,
                             list_name_encoded: 'combined-print-and-e-book-nonfiction')
  end

  test 'should create review' do
    assert_difference('Review.count') do
      post reviews_url,
           params: { review: { book_title: @review.book_title, book_title_encoded: @review.book_title_encoded,
                               review: @review.review, user_token_id: @review.user_token_id, list_name_encoded: @review.list_name_encoded } }, headers: { 'HTTP_REFERER' => @referer_path }
    end

    assert_redirected_to @referer_path
  end

  test 'should show review' do
    get review_url(@review)
    assert_response :success
  end

  test 'should update review' do
    patch review_url(@review),
          params: { review: { book_title: @review.book_title, book_title_encoded: @review.book_title_encoded,
                              review: @review.review, user_token_id: @review.user_token_id, list_name_encoded: @review.list_name_encoded } }, headers: { 'HTTP_REFERER' => @referer_path }
    assert_redirected_to @referer_path
  end

  test 'should destroy review' do
    assert_difference('Review.count', -1) do
      delete review_url(@review), headers: { 'HTTP_REFERER' => @referer_path }
    end

    assert_redirected_to @referer_path
  end
end
