class ApplicationController < ActionController::API
  # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
        :password, :phoneno, :role_id, :status, :email, :first_name, :last_name, :username, :date_of_birth ) }

    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(
        :email, :password, :remember_me) }

    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
        :password, :phoneno, :role_id, :status,:email, :first_name, :last_name, :username, :date_of_birth ) }

  end

end
