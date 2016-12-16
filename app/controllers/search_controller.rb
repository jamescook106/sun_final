class SearchController < ApplicationController

  def index
    @resources = Resource.all
    if params[:search] or params[:language] or params[:contenttype] or params[:content_tag] or params[:thematic_tag]
      @resources = Resource.search(params[:search],params[:language],params[:contenttype],params[:content_tag],params[:thematic_tag]).page(params[:page]).order(:id).reverse_order.per(5)
    else
      @resources = Resource.all.page(params[:page]).order(:id).reverse_order.per(5)
    end
  end

end
