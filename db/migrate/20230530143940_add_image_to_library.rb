# frozen_string_literal: true

class AddImageToLibrary < ActiveRecord::Migration[7.0]
  def change
    add_column :library_items, :book_image, :string
  end
end
