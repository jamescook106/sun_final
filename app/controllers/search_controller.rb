class SearchController < ApplicationController

  def index
    @resources = Resource.all
    if params[:search]
      @resources = Resource.search(params[:search])
    else
      @resources = Resource.all
    end
  end
end
