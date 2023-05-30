# frozen_string_literal: true

json.extract! recommendation, :id, :email_list, :user_token_id, :book_title, :book_title_encoded, :created_at,
              :updated_at
json.url recommendation_url(recommendation, format: :json)
