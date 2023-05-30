# frozen_string_literal: true

require 'test_helper'

class RecommendationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recommendation = recommendations(:one)
  end

  test 'should get index' do
    get recommendations_url
    assert_response :success
  end

  test 'should get new' do
    get new_recommendation_url
    assert_response :success
  end

  test 'should create recommendation' do
    assert_difference('Recommendation.count') do
      post recommendations_url,
           params: { recommendation: { book_title: @recommendation.book_title,
                                       book_title_encoded: @recommendation.book_title_encoded, email_list: @recommendation.email_list, user_token_id: @recommendation.user_token_id } }
    end

    assert_redirected_to recommendation_url(Recommendation.last)
  end

  test 'should show recommendation' do
    get recommendation_url(@recommendation)
    assert_response :success
  end

  test 'should get edit' do
    get edit_recommendation_url(@recommendation)
    assert_response :success
  end

  test 'should update recommendation' do
    patch recommendation_url(@recommendation),
          params: { recommendation: { book_title: @recommendation.book_title,
                                      book_title_encoded: @recommendation.book_title_encoded, email_list: @recommendation.email_list, user_token_id: @recommendation.user_token_id } }
    assert_redirected_to recommendation_url(@recommendation)
  end

  test 'should destroy recommendation' do
    assert_difference('Recommendation.count', -1) do
      delete recommendation_url(@recommendation)
    end

    assert_redirected_to recommendations_url
  end
end
