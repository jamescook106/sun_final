class GeneralController < ApplicationController

  def static
    @champions = Champion.order(:id)
    @resources = Resource.order(:id)
    if valid_page?
      render template: "general/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private

  #Method for seeing if page exists
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/general/#{params[:page]}.html.erb"))
  end

end
