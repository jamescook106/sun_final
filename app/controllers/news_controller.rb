class NewsController < ApplicationController
  def index
    @posts = News.order("created_at DESC").page(params[:page]).per(10)
  end



  def specific
    @posts = News.find_by_id(params[:id])
  end

end
