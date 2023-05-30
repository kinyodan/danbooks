# frozen_string_literal: true

FactoryBot.define do
  factory :recommendation do
    email_list { 'MyString' }
    user_token_id { 'MyString' }
    book_title { 'MyString' }
    book_title_encoded { 'MyString' }
  end
end
