class Contractors::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password, :address,
               :remember_me, :address, :city, :state, :zip_code, :country,
               :company_name, :experience)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password, :address,
               :remember_me, :address, :city, :state, :zip_code, :country,
               :company_name, :experience, :current_password)
    end
  end
end
