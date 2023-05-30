# frozen_string_literal: true

json.extract! review, :id, :book_title, :book_title_encoded, :review, :user_token_id, :created_at, :updated_at
json.url review_url(review, format: :json)
