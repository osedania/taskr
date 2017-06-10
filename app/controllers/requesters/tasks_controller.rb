class Requesters::TasksController < ApplicationController

  def index
    @task = Task.where(requester_id: current_user.id)
  end

  def show
  end

end
