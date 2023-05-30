# frozen_string_literal: true

class CreateWishlists < ActiveRecord::Migration[7.0]
  def change
    create_table :wishlists do |t|
      t.string :wishlist_id
      t.string :user_token_id
      t.integer :user_id
      t.string :category
      t.string :wishlist_titles

      t.timestamps
    end
  end
end
