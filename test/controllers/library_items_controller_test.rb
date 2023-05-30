# frozen_string_literal: true

require 'test_helper'

class LibraryItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library_item = library_items(:one)
  end

  test 'should get index' do
    get library_items_url
    assert_response :success
  end

  test 'should get new' do
    get new_library_item_url
    assert_response :success
  end

  test 'should create library_item' do
    assert_difference('LibraryItem.count') do
      post library_items_url,
           params: { library_item: { book_title: @library_item.book_title, book_title_encoded: @library_item.book_title_encoded,
                                     libary_id: @library_item.libary_id, list_name_encoded: @library_item.list_name_encoded } }
    end

    assert_redirected_to library_item_url(LibraryItem.last)
  end

  test 'should show library_item' do
    get library_item_url(@library_item)
    assert_response :success
  end

  test 'should get edit' do
    get edit_library_item_url(@library_item)
    assert_response :success
  end

  test 'should update library_item' do
    patch library_item_url(@library_item),
          params: { library_item: { book_title: @library_item.book_title, book_title_encoded: @library_item.book_title_encoded,
                                    libary_id: @library_item.libary_id, list_name_encoded: @library_item.list_name_encoded } }
    assert_redirected_to library_item_url(@library_item)
  end

  test 'should destroy library_item' do
    assert_difference('LibraryItem.count', -1) do
      delete library_item_url(@library_item)
    end

    assert_redirected_to library_items_url
  end
end
