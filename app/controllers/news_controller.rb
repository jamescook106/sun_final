class NewsController < ApplicationController
  def index
    if params[:search]
      @posts = News.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @posts = News.order("created_at DESC").page(params[:page]).per(10)
    end
  end

  def indexlr
    if params[:search]
      @posts = News.lr.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @posts = News.lr.order("created_at DESC").page(params[:page]).per(10)
    end
  end

  def specific
    @posts = News.find_by_id(params[:id])
  end

end
