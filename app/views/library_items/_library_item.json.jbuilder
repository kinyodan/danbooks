# frozen_string_literal: true

json.extract! library_item, :id, :libary_id, :book_title, :book_title_encoded, :list_name_encoded, :created_at,
              :updated_at
json.url library_item_url(library_item, format: :json)
