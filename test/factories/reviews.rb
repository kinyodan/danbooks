# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    book_title { 'ONLY THE DEAD' }
    book_title_encoded { 'only-the-dead' }
    review { 'This is a test review ' }
    user_token_id { 'R2ugYwFLFRozQA==' }
    list_name_encoded { 'combined-print-and-e-book-fiction' }
  end
end
