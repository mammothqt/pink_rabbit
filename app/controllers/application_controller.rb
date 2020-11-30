class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  protected

  def configure_permitted_parameters
    update_attrs = [:full_name]
    signup_attrs = [:full_name]
    devise_parameter_sanitizer.permit(:account_update, keys: update_attrs)
    devise_parameter_sanitizer.permit(:sign_up, keys: signup_attrs)
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
