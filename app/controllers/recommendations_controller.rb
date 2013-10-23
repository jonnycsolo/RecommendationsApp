class RecommendationsController < ApplicationController

  def index
    @recommendations = all_recommendations
  end

  def show
    the_recommendation_id = params["id"].to_i

    @item = all_recommendations[the_recommendation_id]

    render 'details'
  end


  def all_recommendations
    first_item = Item.new
    first_item.title = "Apollo 13"
    first_item.description = "Documentary..."

    second_item = Item.new
    second_item.title = "Adler Planetarium"
    second_item.description = "Stars..."

    third_item = Item.new
    third_item.title = "PickAxe Book"
    third_item.description = "A book..."

    return [first_item, second_item, third_item]
  end

end
