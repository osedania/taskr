class TasksController < ApplicationController

  def new
    @task = Task.new
    @task_categories = TaskCategory.all
  end


  def create
    if current_user.nil?
      session[:task] = task_params
      redirect_to new_user_session_path
    else
      @task = Task.new(task_params)
      @task.user = current_user
      @task.task_category_id = params[:task][:task_category_id]
      if @task.save
        redirect_to task_path(@task)
        flash[:notice] = 'Task was successfully posted!'
      else
        render 'new'
      end
    end
  end

  def index
    if params[:type] == 'all'
      @tasks = Task.where('status = ? OR status = ?', 'Open', 'Bidding')
    elsif params[:type] == 'requester'
        @tasks = Task.where(user: current_user)
        render action: '../requesters/tasks/index'
    else

    end
  end

  def edit
    @task = Task.find(params[:id])
    @task_categories = TaskCategory.all
  end

  def update
    @task = Task.find(params[:id])
    if @task.user === current_user
      if @task.update_attributes(task_params)
        @tasks = Task.where(user: current_user)
        @task_cat = TaskCategory.find(@task.task_category_id)
        flash[:notice] = "Task Updated!"
        render action: '../requesters/tasks/show'
      else
        render 'edit'
      end
    else
      flash[:notice] = "Sorry, you can't edit this task"
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.user === current_user
      @task.destroy
      @tasks = Task.where(user: current_user)
      @task_cat = TaskCategory.find(@task.task_category_id)
      flash[:notice] = "Task Deleted!"
      render action: '../requesters/tasks/index'
    else
      flash[:notice] = "Sorry, you can't delete this task"
    end
  end

  def show
    if params[:page] == 'for_requester' && current_user.requester?
        @task = Task.find(params[:id])
        @task_cat = TaskCategory.find(@task.task_category_id)
        render action: '../requesters/tasks/show'

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
