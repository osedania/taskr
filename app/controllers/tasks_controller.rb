class TasksController < ApplicationController

  def new
    @task = Task.new
    @task_categories = TaskCategory.all
  end

  def create
    if current_user.nil?
      session[:task] = task_params
      redirect_to new_requester_session_path
    else
      @task = Task.new(task_params)
      @task.requester_id = current_user.id
      @task.task_category_id = params[:task][:task_category_id]
      if @task.save
        redirect_to requesters_task_path(@task)
        flash[:notice] = 'Task was successfully posted!'
      else
        render 'new'
      end
    end
  end

  def show
  end

  def edit
    @task = Task.find_by(requester_id: current_user.id)
    @task = Task.find(params[:id])
    @task_categories = TaskCategory.all
  end

  def update
    @task = Task.find_by(requester_id: current_user.id)
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to requesters_task_path(@task)
      flash[:notice] = "Task Updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find_by(requester_id: current_user.id)
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to requesters_tasks_path
    flash[:notice] = "Task Deleted!"
  end


  private

  def task_params
    params.require(:task)
         .permit(:name,
                 :description,
                 :location,
                 :minimum_budget,
                 :maximum_budget,
                 :country,
                 :task_category_id,
                 :requester_id)
  end

end
