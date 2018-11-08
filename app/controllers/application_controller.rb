class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  def after_sign_out_path_for resource
     top_path
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:log_in, keys: [:name, :email])
  end
end
