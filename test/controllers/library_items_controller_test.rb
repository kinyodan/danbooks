# frozen_string_literal: true

require 'test_helper'

class LibraryItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library_item = library_items(:one)
    @library_item_two = library_items(:two)
    @referer_path = book_url(book_title: 'THE WAGER', item_index: 0,
                             list_name_encoded: 'combined-print-and-e-book-nonfiction')
  end

  test 'should create library_item' do
    post library_items_url,
         params: { library_item: { book_title: @library_item_two.book_title, book_title_encoded: @library_item_two.book_title_encoded,
                                   library_id: @library_item_two.library_id, list_name_encoded: @library_item_two.list_name_encoded } },
         headers: { 'HTTP_REFERER' => @referer_path }

    assert_redirected_to @referer_path
  end

  test 'should show library_item' do
    get library_item_url(@library_item)
    assert_response :success
  end

  test 'should update library_item' do
    patch library_item_url(@library_item),
          params: { library_item: { book_title: @library_item.book_title, book_title_encoded: @library_item.book_title_encoded,
                                    library_id: @library_item.library_id, list_name_encoded: @library_item.list_name_encoded } },
          headers: { 'HTTP_REFERER' => @referer_path }

    assert_redirected_to @referer_path
  end

  test 'should destroy library_item' do
    assert_difference('LibraryItem.count', -1) do
      delete library_item_url(@library_item), headers: { 'HTTP_REFERER' => @referer_path }
    end

    assert_redirected_to @referer_path
  end
end
