class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if session[:task].present?
      @task = Task.new(session[:task])
      @task.user = current_user
      if @task.save
        session[:task] = nil
        flash[:notice] = "Task was successfully posted!"
        task_path(@task)
      else
        new_task_path
      end
    else
      root_path
    end
  end

  def contractor_signed_in?
    current_user.contractor
  end

  def requester_signed_in?
    current_user.requester
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password)
    end
  end
end
