class SearchController < ApplicationController

  def index
    @resources = Resource.all
    if params[:search] or params[:language] or params[:contenttype] or params[:content_tag] or params[:thematic_tag]
      @resources = Resource.search(params[:search],params[:language],params[:contenttype],params[:content_tag],params[:thematic_tag]).page(params[:page]).per(5)
    else
      @resources = Resource.all
    end
  end

end
