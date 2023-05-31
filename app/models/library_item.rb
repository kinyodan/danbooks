# frozen_string_literal: true

class LibraryItem < ApplicationRecord
  belongs_to :library
  validates_presence_of :library_id
  validates_presence_of :book_title
  validates_presence_of :list_name_encoded
  validates_presence_of :book_title_encoded
end
