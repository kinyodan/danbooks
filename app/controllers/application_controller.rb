# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include BooksListManager
  include CookiesManager
  include LibraryManager
  include ReviewsManager
  before_action :set_cookie_id
  before_action :stage_booklist
  before_action :setup_library
  before_action :setup_library_items

  ########### info ###################
  # methods found outside this class are named begining with where they are defined
  # example book_list_manager_get_book_from_item_index method is fond inside controller/concerns/book_list_manager
  # all but a few methods are found outside the controllers concerns folder and will be commented as such

  def stage_booklist
    # BOOKS_LISTINGS constant is defined inside config/initializers/booklist file
    @booklist = BOOKS_LISTINGS.key?('results') ? BOOKS_LISTINGS['results'] : []
  end

  def set_cookie_id
    # cookies_manager_cookies_isset & cookies_manager_write_cookie_data
    # defined in controller/concerns/cookies_manager
    return if cookies_manager_cookies_isset

    cookies_manager_write_cookie_data('user_token', SecureRandom.base64(10))
    @user_token = request.cookies['user_token']
  end

  def setup_library
    return unless cookies_manager_cookies_isset

    user_token_id = request.cookies['user_token']
    return unless user_token_id

    @my_library = library_manager_setup_library(user_token_id)
  end

  def setup_library_items
    return unless @my_library

    library_items = library_manager_setup_library_items(@my_library.id)
    @my_library_items = library_items || []
  end
end
