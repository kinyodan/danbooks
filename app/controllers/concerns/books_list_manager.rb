# frozen_string_literal: true

require 'json'
require 'api_service_manager'

# Class to manage api calls to retreive booklists from https://api.nytimes.com/svc/books/v3 API
module BooksListManager
  extend ActiveSupport::Concern

  # ApiServiceManager defined inside lib/api_service_manager required above
  API_SERVICES = ApiServiceManager.new

  def book_list_manager_get_listed_books(list_name_encoded)
    uri = to_api_url("lists/current/#{list_name_encoded}.json")
    listed_books_data = API_SERVICES.send_get_request_to_api(uri)
    response_parsed = JSON.parse listed_books_data
    { status: true, data: response_parsed['results'] }
  rescue StandardError
    { status: false }
  end

  def book_list_manager_get_book_from_item_index(listed_books_data, item_index)
    return nil unless listed_books_data
    return nil unless item_index

    listed_books_data[item_index.to_i]
  end

  def book_list_manager_search_listed_book_data(listed_books_data, book_title)
    return unless listed_books_data

    book = listed_books_data.select { |book| book['title'] == book_title }
    return book if book

    []
  end

  def to_api_url(url)
    URI("#{ENV['API_URL']}#{url}?api-key=#{ENV['API_KEY']}")
  end

  # incase API becomes unavailable for any reason
  # and we can't get main menu items defined inside initializers booklist initializer file
  def read_backup_records
    return [{}] unless File.exist?('storage/books_list.json')

    file = File.read('storage/books_list.json')
    JSON.parse file
  end
end
