class NewsController < ApplicationController
  def index
    @posts = News.page(params[:page]).per(10)
  end
end
