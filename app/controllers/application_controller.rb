class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #If someone tries to access the admin without authorisation
  #then we redirect to the home page

  before_filter :set_locale
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
  { :locale => I18n.locale }
end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:country, :motivation, :organisation])
    end

end
