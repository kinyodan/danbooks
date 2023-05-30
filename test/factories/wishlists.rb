# frozen_string_literal: true

FactoryBot.define do
  factory :wishlist do
    wishlist_id { 'MyString' }
    user_token_id { 'MyString' }
    user_id { 1 }
    category { 'MyString' }
    wishlist_titles { 'MyString' }
  end
end
