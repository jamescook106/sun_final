class ResourceController < ApplicationController
  def index
    @resources = Resource.order(:id)
    render template: "resource/index"
  end

  def full_description
    @resources = Resource.find_by_id(params[:id])
    if @resources
      render template: "resource/specific"
    else
      redirect_to "/knowledge"
    end
  end


end
