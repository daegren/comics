class ComicsController < ApplicationController

  def index
    @comics = Comic.all
    @newest = Comic.newest
  end

  def show
    @comic = Comic.find(params[:id])
  end
end
