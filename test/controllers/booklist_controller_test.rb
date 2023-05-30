# frozen_string_literal: true

require 'test_helper'

class BooklistControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get booklist_index_url
    assert_response :success
  end

  test 'should get show' do
    get booklist_url
    assert_response :success
  end
end
