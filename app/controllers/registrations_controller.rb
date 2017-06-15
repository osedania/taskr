class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def new
    build_resource(role: params[:role])
    yield resource if block_given?
    respond_with resource
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password, :address,
               :remember_me, :address, :city, :state, :zip_code, :country,
               :company_name, :contractor_experience, :role)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password, :address,
               :remember_me, :address, :city, :state, :zip_code, :country,
               :company_name, :contractor_experience, :current_password)
    end
  end

end
