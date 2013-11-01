class RecommendationsController < ApplicationController

  def update
    item = Item.find_by(id: params[:id])
    item.title = params[:title]
    item.description = params[:desc]
    item.free = params[:free]
    item.save

    redirect_to recommendations_url
  end
  def edit
    @item = Item.find_by(id: params[:id])
  end

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
    redirect_to recommendations_url
  end

  def destroy
    item = Item.find_by(id: params[:id])
    # item.destroy
    redirect_to recommendations_url
  end

  def index
    # if params[:sort] != nil
    #if !params[:sort].nil?

    # SELECT * FROM ITEMS WHERE ID = 8
    # CREATE TABLE USERS (.........)
    # DROP TABLE USERS

    # SELECT * FROM ITEMS WHERE TITLE LIKE 'Apollo'; DROP TABLE USERS;

    if params[:keyword].present?
      # @recommendations = Item.where("title LIKE ? OR description LIKE ?",
      #                               "%#{params[:keyword]}%",
      #                               "%#{params[:keyword]}%")

      @recommendations = Item.where("title LIKE :k OR description LIKE :k",
                                    :k => "%#{params[:keyword]}%")

    elsif params[:sort].present?
      @recommendations = Item.order('title')
    else
      @recommendations = Item.all
    end
  end

  def show
    @item = Item.find_by(id: params[:id])
  end

end
