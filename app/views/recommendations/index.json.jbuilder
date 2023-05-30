# frozen_string_literal: true

json.array! @recommendations, partial: 'recommendations/recommendation', as: :recommendation
