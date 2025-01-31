class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_pararmeters, if: :devise_controller?

  def configure_permitted_pararmeters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:first_name, :last_name])
  end
end
