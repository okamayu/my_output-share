class ApplicationController < ActionController::Base
  before_action :user_permitted_parameters, if: :devise_controller?

  private

  def user_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
