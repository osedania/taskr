class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  devise_group :user, contains: [:requester, :contractor]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if session[:task].present?
      @task = Task.new(session[:task])
      if @task.save
        session[:task] = nil
        flash[:notice] = "Task was successfully posted!"
        task_path(current_user.id, @task)
      else
        super
      end
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password)
    end
  end

end
