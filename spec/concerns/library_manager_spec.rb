# frozen_string_literal: true

require 'rails_helper'
include LibraryManager

# Testing the rover_service_concern methods and funtionality
# rover_service concern is a model concern inside model/concerns folder
RSpec.describe LibraryManager do
  before do
    @library = create(:library)
    @library_item = create(:library_item)
  end

  it 'Can setup library' do
    my_library = library_manager_setup_library(@library.user_token_id)
    expect(my_library.library_name).to eq('My Libray')
    expect(my_library.user_token_id).to eq('R2ugYwFLFRozQA==')
  end

  it 'libary must have user_token_id parameter to setup library' do
    my_library = library_manager_setup_library(nil)
    expect(my_library).to eq(nil)
  end

  it 'Can create and setup library_items ' do
    my_library = library_manager_setup_library(@library.user_token_id)
    library_items = library_manager_setup_library_items(my_library.id)
    expect(my_library.library_name).to eq('My Libray')
    expect(my_library.user_token_id).to eq('R2ugYwFLFRozQA==')
  end
end
