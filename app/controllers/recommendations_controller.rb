class RecommendationsController < ApplicationController

  def index
    # @recommendations = ["United Center", "The PickAxe", "Apollo 13", "Adler Planetarium"]

    @recommendations = [
      { title: "Apollo 13",
        description: "Documentary about how to read error messages."
      },
      { title: "Adler Planetarium",
        description: "See the skyshow"
      },
      { title: 'The PickAxe',
        description: "The book every Ruby dev should own."}
    ]
  end
end
