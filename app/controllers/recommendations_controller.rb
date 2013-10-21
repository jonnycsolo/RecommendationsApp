class RecommendationsController < ApplicationController

  def details
    the_recommendation_id = params["id"].to_i
    recommendations = [
      {
        id: 0,
        title: "Apollo 13",
        description: "Documentary about how to read error messages."
      },
      {
        id: 1,
        title: "Adler Planetarium",
        description: "See the skyshow"
      },
      {
        id: 2,
        title: 'The PickAxe',
        description: "The book every Ruby dev should own."}
    ]

    @item = recommendations[the_recommendation_id]
  end

  def index
    @recommendations = [
      {
        id: 0,
        title: "Apollo 13",
        description: "Documentary about how to read error messages."
      },
      {
        id: 1,
        title: "Adler Planetarium",
        description: "See the skyshow"
      },
      {
        id: 2,
        title: 'The PickAxe',
        description: "The book every Ruby dev should own."}
    ]
  end
end
