class RecommendationsController < ApplicationController

  # Just present a blank form to the user
  # that they can fill in and submit.
  def new
  end

  # Receive submitted data and add a new item
  # into the database.
  def create
    i = Item.new
    i.title = params["title"]
    i.description = params["desc"]
    i.save
    redirect_to root_url
  end

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
