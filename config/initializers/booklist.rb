# frozen_string_literal: true

require 'books_list_setup'
include BookslistSetup

# BooksListManager is defined in lib/books_list_manager
begin
  books_listings = get_booklistings
  BOOKS_LISTINGS = JSON.parse books_listings
rescue StandardError
  BOOKS_LISTINGS = read_backup_records
end
