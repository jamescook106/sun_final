class ResourceController < ApplicationController

  before_filter :authenticate_user!,
    :only => [:new]

  def index
    @resources = Resource.order(:id).reverse_order
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
    raise CanCan::AccessDenied unless can? :upload, @resource
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
    params.require(:resource).permit(:name, :short, :long, :file, :language, :contenttype, :protected, :thematic_tag, :content_tag, :award, :external)
  end

end
