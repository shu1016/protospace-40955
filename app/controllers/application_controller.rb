class ApplicationController < ActionController::Base
  before_action :configure_permited_parameters, if: :devise_controller?
  before_action :authenticate_user!, only: [:new, :edit, :destoroy]
  private
  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :profile, :occupation, :position ])
  end

end
