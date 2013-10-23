class RecommendationsController < ApplicationController

  def index
    @recommendations = Item.all
  end

  def show
    the_recommendation_id = params["id"].to_i

    @item = all_recommendations[the_recommendation_id]

    render 'details'
  end

end
