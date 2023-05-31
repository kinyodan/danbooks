# frozen_string_literal: true

require 'rails_helper'
include ReviewsManager

# Testing the rover_service_concern methods and funtionality
# rover_service concern is a model concern inside model/concerns folder
RSpec.describe ReviewsManager do
  before do
    Review.delete_all
    4.times do
      create(:review)
    end
  end

  it 'Can get Reviews for a book' do
    reviews = reviews_manager_get_reviews_for_book('ONLY THE DEAD')
    expect(reviews.count).to eq(4)
  end

  it "Can return book_title_ as a slug" do 
     our_parameterized_string =book_title_to_slug("ONLY THE DEAD")
     expect(our_parameterized_string).to eq("only-the-dead")
  end 

end
