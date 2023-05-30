# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :library_items
  before_create :add_libary_name
  validates_uniqueness_of :user_token_id

  def add_libary_name
    return if library_name

    self.library_name = 'My Libray'
  end
end
