class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?




  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name, :bio, :avatar, :owner]
    devise_parameter_sanitizer.for(:account_update) << [:name, :bio, :avatar, :owner]
  end

  def after_sign_in_path_for(user)
    user_path(@user)
  end


end
