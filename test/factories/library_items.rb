# frozen_string_literal: true

FactoryBot.define do
  factory :library_item do
    libary_id { 1 }
    book_title { 'ONLY THE DEAD' }
    book_title_encoded { 'ONLY-THE-DEAD' }
    list_name_encoded { 'combined-print-and-e-book-fiction'}
  end
end
