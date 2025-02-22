class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[pseudonym role photo password])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:pseudonym])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[pseudonym role photo password current_password])
  end

  def after_sign_in_path_for(resource)
    root_path 
  end
end
