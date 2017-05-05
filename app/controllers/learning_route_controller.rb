class LearningRouteController < ApplicationController

  def index
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
