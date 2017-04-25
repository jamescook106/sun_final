class SearchController < ApplicationController

  def index
    @resources = Resource.approved.all
    if params[:search] or params[:language] or params[:contenttype] or params[:content_tag] or params[:thematic_tag]
      @resources = Resource.approved.search(params[:search],params[:language],params[:contenttype],params[:content_tag],params[:thematic_tag]).page(params[:page]).order(:id).reverse_order.per(5)
    else
      @resources = Resource.approved.all.page(params[:page]).order(:id).reverse_order.per(5)
    end
  end

  def award
    @resources = Resource.approved.where("award=true").page(params[:page]).order(:id).reverse_order.per(5)
  end
end
