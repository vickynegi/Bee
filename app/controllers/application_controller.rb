class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

	def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :gender)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :current_password)}
	end
end
