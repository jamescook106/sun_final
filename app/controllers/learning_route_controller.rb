class LearningRouteController < ApplicationController

  def index
    @posts = News.lr.order("created_at DESC").page(params[:page]).per(10)
    render template: "learning_route/about_lr"
  end

  def africa
    render template: "learning_route/lr1"
  end

  def outcomes
    render template: "learning_route/lrao"
  end

  def lr_champions
    render template: "learning_route/lrc"
  end

  def lr_innovation
    render template: "learning_route/lrip"
  end

end
