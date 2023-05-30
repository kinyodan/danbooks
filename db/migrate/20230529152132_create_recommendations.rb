# frozen_string_literal: true

class CreateRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recommendations do |t|
      t.string :email_list
      t.string :user_token_id
      t.string :book_title
      t.string :book_title_encoded

      t.timestamps
    end
  end
end
