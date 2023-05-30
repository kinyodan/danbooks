# frozen_string_literal: true

# Module to manage API requests
class ApiServiceManager
  extend ActiveSupport::Concern

  def send_get_request_to_api(uri, _params = [], _headers = [])
    p "send_get_request_to_api--#{Time.now}"
    res = Net::HTTP.get_response(uri)
    response = res.body if res.is_a?(Net::HTTPSuccess)
    response_body = response
    response_body && response_body['status'] ? response_body : error_messege('StandardError', uri)
    # rescue StandardError
    #   error_messege('StandardError', uri)
    # rescue Errno::ECONNREFUSED
    #   error_messege('ECONNREFUSED', uri)
  end

  def error_messege(error, uri)
    case error
    when 'ECONNREFUSED'
      { status: false, data: nil,
        message: "Errno::ECONNREFUSED::Problem getting data from API #{uri}" }
    when 'StandardError'
      { status: false, data: nil,
        message: "Errno::StandardError::Problem getting data from API #{uri}" }
    else
      { status: false, data: nil, message: "Errno::  ::Problem getting data from API #{uri}" }
    end
  end
end
