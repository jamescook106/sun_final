class SearchController < ApplicationController

  def index
    @resources = Resource.all
    if params[:search] or params[:language]
      @resources = Resource.search(params[:search],params[:language])
    else
      @resources = Resource.all
    end
  end
end
