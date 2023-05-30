# frozen_string_literal: true

require 'books_list_setup'

# BooksListManager is defined in lib/books_list_manager
booklist_retreiver = BookslistSetup.new
books_listings = booklist_retreiver.get_booklistings
BOOKS_LISTINGS = JSON.parse books_listings
