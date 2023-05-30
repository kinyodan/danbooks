# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    book_title { 'ONLY THE DEAD' }
    book_title_encoded { 'ONLY-THE-DEAD' }
    review { 'This is a test review ' }
    user_token_id { 'R2ugYwFLFRozQA==' }
  end
end
