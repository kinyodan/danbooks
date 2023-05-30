# frozen_string_literal: true

class CreateLibraryItems < ActiveRecord::Migration[7.0]
  def change
    create_table :library_items do |t|
      t.integer :library_id
      t.string :book_title
      t.string :book_title_encoded
      t.string :list_name_encoded

      t.timestamps
    end
  end
end
