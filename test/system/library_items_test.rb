# frozen_string_literal: true

require 'application_system_test_case'

class LibraryItemsTest < ApplicationSystemTestCase
  setup do
    @library_item = library_items(:one)
  end

  test 'visiting the index' do
    visit library_items_url
    assert_selector 'h1', text: 'Library items'
  end

  test 'should create library item' do
    visit library_items_url
    click_on 'New library item'

    fill_in 'Book title', with: @library_item.book_title
    fill_in 'Book title encoded', with: @library_item.book_title_encoded
    fill_in 'Libary', with: @library_item.libary_id
    fill_in 'List name encoded', with: @library_item.list_name_encoded
    click_on 'Create Library item'

    assert_text 'Library item was successfully created'
    click_on 'Back'
  end

  test 'should update Library item' do
    visit library_item_url(@library_item)
    click_on 'Edit this library item', match: :first

    fill_in 'Book title', with: @library_item.book_title
    fill_in 'Book title encoded', with: @library_item.book_title_encoded
    fill_in 'Libary', with: @library_item.libary_id
    fill_in 'List name encoded', with: @library_item.list_name_encoded
    click_on 'Update Library item'

    assert_text 'Library item was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Library item' do
    visit library_item_url(@library_item)
    click_on 'Destroy this library item', match: :first

    assert_text 'Library item was successfully destroyed'
  end
end
