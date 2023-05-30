class AddMessegeToRecommendation < ActiveRecord::Migration[7.0]
  def change
    add_column :recommendations, :messege, :string
  end
end
