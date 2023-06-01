module RecommendationsManager
	extend ActiveSupport::Concern

	def recommendations_manager_get_recommendations(user_token_id)
		return unless user_token_id
		Recommendation.where(user_token_id: user_token_id)
	end 
end