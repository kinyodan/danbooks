# frozen_string_literal: true

class Recommendation < ApplicationRecord
  validates_presence_of :email_list
  validates_presence_of :user_token_id
  validates_presence_of :book_title
  validates_presence_of :book_title_encoded
  validates_presence_of :list_name_encoded
end
