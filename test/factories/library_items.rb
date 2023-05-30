# frozen_string_literal: true

FactoryBot.define do
  factory :library_item do
    libary_id { 1 }
    book_title { 'MyString' }
    book_title_encoded { 'MyString' }
    list_name_encoded { 'MyString' }
  end
end
