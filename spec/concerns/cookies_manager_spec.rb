# frozen_string_literal: true

require 'rails_helper'
include CookiesManager

# Testing the rover_service_concern methods and funtionality
# rover_service concern is a model concern inside model/concerns folder
RSpec.describe CookiesManager do
  include Rack::Test::Methods

  before do
    @cookie_token = SecureRandom.base64(10)
  end

  # it "Can Write cookie_data" do
  #   cookie_data = cookies_manager_write_cookie_data('user_token', @cookie_token)
  #   expect(cookie_data).to eq(true)
  #   expect(request.cookies["user_token"]).to eq(@cookie_token)
  # end

  # it "Can Check if cookie_id user_token is set" do
  #   cookies_manager_cookies_isset()
  # end
end
