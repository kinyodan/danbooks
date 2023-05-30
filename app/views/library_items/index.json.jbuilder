# frozen_string_literal: true

json.array! @library_items, partial: 'library_items/library_item', as: :library_item
