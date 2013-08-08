class My::ComicsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @comics = current_user.comics
  end
end
