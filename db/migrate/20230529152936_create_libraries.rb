# frozen_string_literal: true

class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :user_token_id
      t.string :library_name

      t.timestamps
    end
  end
end
