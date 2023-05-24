class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :email, :password, :user_name, :date_of_birth, :photo)
    end
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :password) }
  end
end
