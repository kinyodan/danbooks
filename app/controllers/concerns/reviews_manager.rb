# frozen_string_literal: true

module ReviewsManager
  def reviews_manager_get_reviews_for_book(book_title)
    Review.where(book_title_encoded: book_title_to_slug(book_title))
  end

  def book_title_to_slug(book_title)
    book_title.parameterize
  end
end
