class ChampionController < ApplicationController
  def index
    @champions = Champion.all
  end

  def champion_description
    @champions = Champion.find_by_id(params[:id])
    if @champions
      render template: "champion/specific"
    else
      redirect_to "/champions"
    end
  end
end
