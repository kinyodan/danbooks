# frozen_string_literal: true

require 'rails_helper'

# Testing the Review model funtionality
RSpec.describe Review do
  subject do
    create(:review)
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

  it 'is not valid without a review' do
    subject.review = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a user_token_id' do
    subject.user_token_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a book_title_encoded' do
    subject.list_name_encoded = nil
    expect(subject).to_not be_valid
  end

end

