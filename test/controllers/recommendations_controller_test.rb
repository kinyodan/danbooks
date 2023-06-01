# frozen_string_literal: true

require 'test_helper'

class RecommendationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recommendation = recommendations(:one)
    @referer_path = book_url(book_title: 'THE WAGER', item_index: 0,
                             list_name_encoded: 'combined-print-and-e-book-nonfiction')
  end

  test 'should create recommendation' do
    assert_difference('Recommendation.count') do
      post recommendations_url,
           params: { recommendation: { book_title: @recommendation.book_title,
                                       book_title_encoded: @recommendation.book_title_encoded, email_list: @recommendation.email_list, user_token_id: @recommendation.user_token_id, list_name_encoded: @recommendation.list_name_encoded } },
           headers: { 'HTTP_REFERER' => @referer_path }
    end
    assert_redirected_to @referer_path
  end

  test 'should update recommendation' do
    patch recommendation_url(@recommendation),
          params: { recommendation: { book_title: @recommendation.book_title,
                                      book_title_encoded: @recommendation.book_title_encoded, email_list: @recommendation.email_list, user_token_id: @recommendation.user_token_id, list_name_encoded: @recommendation.list_name_encoded } },
          headers: { 'HTTP_REFERER' => @referer_path }
    assert_redirected_to @referer_path
  end

  test 'should destroy recommendation' do
    assert_difference('Recommendation.count', -1) do
      delete recommendation_url(@recommendation)
    end

    assert_redirected_to recommendations_url
  end
end
