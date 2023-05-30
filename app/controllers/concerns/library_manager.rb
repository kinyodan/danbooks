# frozen_string_literal: true

module LibraryManager
  def library_manager_setup_library(user_token_id)
    libray = Library.find_or_create_by(user_token_id: user_token_id)
    libray || false
  end

  def library_manager_setup_library_items(library_id)
    return unless library_id

    LibraryItem.where(library_id: library_id)
  end
end
