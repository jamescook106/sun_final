class ApplicationController < ActionController::Base
  #If someone tries to access the admin without authorisation
  #then we redirect to the home page

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end
end
