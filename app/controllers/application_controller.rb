class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    #sign_upの時nameをストロングパラメーターに追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :email])
    #account_updateの時nameをストロングパラメーターに追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :email])
  end
end
