class RecommendationsController < ApplicationController

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
    redirect_to root_url
  end

  def index
    @recommendations = Item.all
  end

  def show
    @item = Item.find_by(id: params[:id])
  end

end
