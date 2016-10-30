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

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      flash[:success] = "The Resource was added!"
      redirect_to "/knowledge"
    else
      render 'new'
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :short, :long, :file, :language, :contenttype)
  end

end
