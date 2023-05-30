# frozen_string_literal: true

require 'api_service_manager'

# class to manage booklist , get the booklist from Api and write to json file
# to be used in the main side manu
class BookslistSetup
  API_SERVICE = ApiServiceManager.new

  # ApiServiceManager defined inside lib/api_service_manager required above
  def get_booklistings
    p 'getting books in lib'
    uri = to_api_url('lists/names.json')

    booklist_data = API_SERVICE.send_get_request_to_api(uri)
    parsed_data = JSON.parse booklist_data

    # write records to hard back up as redundancy for error 429(too many request) from Api
    write_backups_booklist(booklist_data)
    booklist_data
    # rescue StandardError
    #     false
  end

  def to_api_url(url)
    URI("#{ENV['API_URL']}#{url}?api-key=#{ENV['API_KEY']}")
  end

  def write_backups_booklist(data)
    # Api seems to experience error 429- too many request and return an error
    # writing simple back up to handle occasions error is thrown by API
    File.open('storage/books_list.json', 'w') do |f|
      f.write(data)
    end
  end
end
