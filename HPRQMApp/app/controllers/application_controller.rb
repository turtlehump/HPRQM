class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :authenticate!
  protect_from_forgery with: :exception
  protected
  def configure_permitted_parameters
    # Parameters for user signup
    devise_parameter_sanitizer.for(:sign_up) { |u| 
      u.permit(:f_name, :m_name, :l_name, :user_id, :email, :password, :password_confirmation) }
    # Parameters for account details update
    devise_parameter_sanitizer.for(:account_update) { |u|
      u.permit(:f_name, :m_name, :l_name, :user_id, :email, :password, :current_password) }
  end

  def authenticate!
    authenticate_user!

    if params[:controller] == 'projects' && (params[:action] == 'edit' || params[:action] == 'update' || params[:action] == 'destroy')
      #current_project = Project.find(params[:id])
      if current_user.super_admin
        return
      else
        redirect_to root_url, notice: "Page not found."
      end
    end
  end
end
