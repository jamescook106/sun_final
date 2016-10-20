class GeneralController < ApplicationController

  def static
    if valid_page?
      render template: "general/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  def resource_home
    @resources = Resource.order(:id)
    render template: "general/resources"
  end

  def resource_full
    @resources = Resource.find_by_id(params[:id])
    if @resources
      render template: "general/resources_specific"
    else
      redirect_to "/knowledge"
    end
  end


  #Champions part
  def champion
    @champions = Champion.all
    render template: "general/champions"
  end

  def champion_full
    @champions = Champion.find_by_id(params[:id])
    if @champions
      render template: "general/champions_specific"
    else
      redirect_to "/champions"
    end
  end

  private

  #Method for seeing if page exists
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/general/#{params[:page]}.html.erb"))
  end

end
