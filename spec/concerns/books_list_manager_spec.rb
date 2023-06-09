# frozen_string_literal: true

require 'rails_helper'
include BooksListManager

# Testing the rover_service_concern methods and funtionality
# rover_service concern is a model concern inside model/concerns folder
RSpec.describe BooksListManager do
  before do
    @list_name_encoded = 'combined-print-and-e-book-fiction'
    @listed_books = book_list_manager_get_listed_books(@list_name_encoded)
  end

  it 'Can get listed books' do
    expect(@listed_books.is_a?(Hash)).to eq(true)
    expect(@listed_books.key?(:status)).to eq(true)
    if @listed_books[:status] == true
      expect(@listed_books.key?(:data)).to eq(true)
    else
      expect(@listed_books.key?(:data)).to eq(false)
    end
  end

  # it 'Can get book Using item index' do
  #   book = book_list_manager_get_book_from_item_index(@listed_books[:data]['books'], 0)
  #   expect(book.is_a?(Hash)).to eq(true)
  #   expect(@listed_books.key?(:status)).to eq(true)
  # end

  # it 'Can get book by searching with title through listed_books_data' do
  #   book = book_list_manager_search_listed_book_data(@listed_books[:data]['books'], 'HAPPY PLACE')
  #   expect(book[0].is_a?(Hash)).to eq(true)
  #   expect(book[0]['title']).to eq('HAPPY PLACE')
  # end

  it 'Can return a url string as our structured API url' do
    api_uri = to_api_url("lists/current/#{@list_name_encoded}.json")
    expect(api_uri).to eq(URI("#{ENV['API_URL']}lists/current/#{@list_name_encoded}.json?api-key=#{ENV['API_KEY']}"))
  end

  it 'Can read back up json records' do
    book_list_backup = read_backup_records
    expect(book_list_backup.is_a?(Hash)).to eq(true)
    expect(book_list_backup.key?('results')).to eq(true)
  end
end
