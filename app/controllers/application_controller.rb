class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email, :password, :name, :profile, :occupation, :position]) 
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :profile, :occupation, :position)
  end
end