class ComicsController < ApplicationController

  def index
    @comics = Comic.all
    @newest_comics = Comic.newest
  end
end
