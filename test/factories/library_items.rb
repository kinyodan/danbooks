# frozen_string_literal: true

FactoryBot.define do
  factory :library_item do
    library_id { 1 }
    book_title { 'ONLY THE DEAD' }
    book_title_encoded { 'ONLY-THE-DEAD' }
    list_name_encoded { 'combined-print-and-e-book-fiction' }
    book_image { 'https://storage.googleapis.com/du-prd/books/images/9781982181697.jpg' }
  end
end
