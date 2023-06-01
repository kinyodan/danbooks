# frozen_string_literal: true

require 'rails_helper'

# Testing the LibraryItem model funtionality
RSpec.describe LibraryItem do
  subject do
    create(:library)
    create(:library_item)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a book_title' do
    subject.book_title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a book_title_encoded' do
    subject.book_title_encoded = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a list_name_encoded' do
    subject.list_name_encoded = nil
    expect(subject).to_not be_valid
  end
end
