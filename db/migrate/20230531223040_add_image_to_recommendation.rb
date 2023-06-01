class AddImageToRecommendation < ActiveRecord::Migration[7.0]
  def change
    add_column :recommendations, :book_image, :string
  end
end
