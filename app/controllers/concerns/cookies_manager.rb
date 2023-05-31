# frozen_string_literal: true

# module to set cookies and relevent cookie feilds for each subdomain
module CookiesManager
  extend ActiveSupport::Concern

  def cookies_manager_write_cookie_data(feild, data)
    cookies[feild.to_s.to_sym] = {
      value: data,
      expires: 1.year.from_now,
      domain: 'localhost',
      secure: false,
      httponly: false
    }
    true
  rescue StandardError
    error_notice = { data: nil,
                     message: 'Error::Exception::Problem Writting cookie data -- source=> cookies_manager_write_cookie_data' }
    p error_notice
    false
  end

  def cookies_manager_cookies_isset
    sessionid_cookie_set = request.cookies['user_token']
    sessionid_cookie_set || nil
  end
end
