class ApplicationController < ActionController::Base
  before_action :authenticate_professional!

  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:name, :address, :phone_number, :logo])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:name, :address, :phone_number, :logo])
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:first_name, :last_name, :phone_number, :picture])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:first_name, :last_name, :phone_number, :picture])
  end
end
