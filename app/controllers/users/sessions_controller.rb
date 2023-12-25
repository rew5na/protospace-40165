# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController


  # def new
  #   @user = User.new
  # end


  # def create
  #   # ログイン処理
  #   session[:user_id] = user.id
  #   @current_user = user
  #   # 他の処理
  # end
  
  
  
  # before_action :configure_permitted_parameters

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:hoge])
  # end

  

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
