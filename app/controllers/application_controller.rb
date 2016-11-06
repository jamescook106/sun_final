class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :set_locale

  #If someone tries to access the admin without authorisation
  #then we redirect to the home page
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end


  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:country, :motivation, :organisation])
    end

end
