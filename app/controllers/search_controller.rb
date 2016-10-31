class SearchController < ApplicationController

  def index
    @resources = Resource.all
    if params[:search] or params[:language] or params[:contenttype]
      @resources = Resource.search(params[:search],params[:language],params[:contenttype])
    else
      @resources = Resource.all
    end
  end
end
