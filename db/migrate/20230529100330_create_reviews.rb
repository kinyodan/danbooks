# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :book_title
      t.string :book_title_encoded
      t.string :review
      t.string :user_token_id
      t.string :list_name_encoded

      t.timestamps
    end
  end
end
