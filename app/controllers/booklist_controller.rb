# frozen_string_literal: true

require 'api_service_manager'

# controller for managing booklists from https://api.nytimes.com/svc/books/v3 API
class BooklistController < ApplicationController
  before_action :set_books_listed, only: %i[show book]

  ########### info ###################
  # methods found outside this class are named begining with where they are defined
  # example book_list_manager_get_book_from_item_index method is fond inside controller/concerns/book_list_manager
  # all but a few methods are found outside the controllers concerns folder and will be commented as such

  def index; end

  def show
    @listed_books = []
    return unless @listed_books_data

    @listed_books = @listed_books_data.key?('books') ? @listed_books_data['books'] : []
  end

  def book
    index_book = book_list_manager_get_book_from_item_index(@listed_books_data, params[:item_index])
    @book =  index_book || book_list_manager_search_listed_book_data(@listed_books_data, params[:book_title])  
    @reviews = reviews_manager_get_reviews_for_book(params[:book_title])

    @library_item = LibraryItem.new
    @recommendation = Recommendation.new
    @review = Review.new
  end

  private

  def set_books_listed
    # book_list_manager_get_listed_books define in controller/concerns/book_list_manager
    @listed_books_data = book_list_manager_get_listed_books(params[:list_name_encoded])
  end

end
