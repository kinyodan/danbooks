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
    expect(@listed_books.has_key?(:status)).to eq(true)
    expect(@listed_books.has_key?(:data)).to eq(true)
  end

  it 'Can get book Using item index' do
    book = book_list_manager_get_book_from_item_index(@listed_books[:data]["books"], 0)
    expect(book.is_a?(Hash)).to eq(true)
    expect(book["title"]).to eq("ONLY THE DEAD")
  end

  it "Can get book by searching with title through listed_books_data" do 
    book = book_list_manager_search_listed_book_data(@listed_books[:data]["books"], "ONLY THE DEAD")[0]
    expect(book.is_a?(Hash)).to eq(true)
    expect(book["title"]).to eq("ONLY THE DEAD")
  end 

  it "Can return a url string as our structured API url" do 
    api_uri = to_api_url("lists/current/#{@list_name_encoded}.json")
    expect(api_uri).to eq(URI("#{ENV['API_URL']}lists/current/#{@list_name_encoded}.json?api-key=#{ENV['API_KEY']}"))
  end

   it "Can read back up json records" do 
    book_list_backup = read_backup_records
    expect(book_list_backup.is_a?(Hash)).to eq(true)
    expect(book_list_backup.has_key?("results")).to eq(true)
   end 



end
