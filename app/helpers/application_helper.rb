# frozen_string_literal: true

module ApplicationHelper
  def sluggify_string_helper(string)
    string.parameterize
  end

  def trim_string(item)
    item.delete
  end

  def checked_in_library_helper(library_items, book)
    library_items.each do |library_item|
      return true if library_item.book_title == book['title']
    end
    false
  end
end
