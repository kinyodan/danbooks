# frozen_string_literal: true

require 'rails_helper'

# Testing the Library model funtionality
RSpec.describe Library, type: :model do
  subject {
    create(:library)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.user_token_id = nil
    expect(subject).to_not be_valid
  end

end