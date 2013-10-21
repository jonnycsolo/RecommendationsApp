class RecommendationsController < ApplicationController

  def index
    @recommendations = all_recommendations
  end

  def details
    the_recommendation_id = params["id"].to_i

    @item = all_recommendations[the_recommendation_id]
  end


  def all_recommendations
    return [{
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
                description: "The book every Ruby dev should own."
              }
            ]
  end

end
