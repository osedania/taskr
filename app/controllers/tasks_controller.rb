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

  def index
    if params[:type] == "all"
      @tasks = Task.where("status = ? OR status = ?", "Open", "Bidding")
    else
      if current_user.requester?
        @tasks = Task.where(user_id: current_user.id)

      end
    #
    # if current_user.requester?
    #   @task = Task.where(requester_id: current_user.id)
    # else
    #   @tasks = Task.where("status = ? OR status = ?", "Open", "Bidding")
    # end
  end

  def edit
    @task = Task.find(params[:id])
    @task_categories = TaskCategory.all
  end

  def update
    @task = Task.find(params[:id])
    if @task.requester === current_user
      if @task.update_attributes(task_params)
        redirect_to requesters_task_path(@task)
        flash[:notice] = "Task Updated!"
      else
        render 'edit'
      end
    else
      flash[:notice] = "Sorry, you can't edit this task"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.requester === current_user
      @task.destroy
      redirect_to requesters_tasks_path
      flash[:notice] = "Task Deleted!"
    else
      flash[:notice] = "Sorry, you can't delete this task"
    end
  end

  def show
    if current_user.requester?
      @task = Task.find(params[:id])
      @task_cat = TaskCategory.find(@task.task_category_id)
    else
      @task = Task.find(params[:id])
      @bid = Bid.new
    end
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
