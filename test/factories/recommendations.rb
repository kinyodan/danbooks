# frozen_string_literal: true

FactoryBot.define do
  factory :recommendation do
    email_list { 'kinyodaniel@gmail.com' }
    user_token_id { 'R2ugYwFLFRozQA==' }
    book_title { 'ONLY THE DEAD' }
    book_title_encoded { 'ONLY-THE-DEAD' }
    list_name_encoded { 'combined-print-and-e-book-fiction' }
  end
end
