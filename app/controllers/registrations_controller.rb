class RegistrationsController < Devise::RegistrationsController
  def new
    super { |resource| resource.role = params[:role] }
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
