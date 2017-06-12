class Requesters::TasksController < ApplicationController
  def index
    @task = Task.where(requester_id: current_user.id)
  end

  def show
    @task = Task.find(params[:id])
    @task_cat = TaskCategory.find(@task.task_category_id)
  end
end
