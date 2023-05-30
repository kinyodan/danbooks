# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    book_title { 'MyString' }
    book_title_encoded { 'MyString' }
    review { 'MyString' }
    user_token_id { 'MyString' }
  end
end
